import 'package:flutter/material.dart';

import '../../theme/effects/effects.dart';
import '../../theme/theme.dart';
import '../../theme/tokens/tokens.dart';
import '../../utils/utils.dart' as utils;

class HiveCheckbox extends StatefulWidget {
  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// Whether the checkbox supports a tri-state (indeterminate).
  ///
  /// When tri-state is true, the checkbox can be in one of three states: true, false, or null.
  ///
  /// When tri-state is false (the default), the checkbox [value] can only be true or false.
  ///
  /// If tri-state is true, the checkbox displays a dash when its [value] is null, indicating the mixed state.
  ///
  /// When a tri-state checkbox is tapped, its [onChanged] callback is invoked, cycling through the three states:
  /// * If the current value is false, the [value] becomes true.
  /// * If the current value is true, the [value] becomes null (mixed state).
  /// * If the current value is null (mixed state), the [value] becomes false.
  ///
  /// If tri-state is false, the [value] must not be null.
  final bool tristate;

  /// Whether the checkbox is checked.
  ///
  /// When [tristate] is true, a value of null corresponds to the mixed state.
  /// When [tristate] is false, this value must not be null.
  final bool? value;

  /// The background color of the checked checkbox.
  final Color? activeColor;

  /// The background color of the unchecked checkbox.
  final Color? inactiveColor;

  /// The border color of the unchecked checkbox.
  final Color? borderColor;

  /// The color of the check icon when the checkbox is checked.
  final Color? checkColor;

  /// The size of the checkbox tap target.
  ///
  /// Defaults to 40.
  final double tapAreaSizeValue;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// The semantic label for the checkbox.
  final String? semanticLabel;

  /// The callback that is called when the checkbox value changes.
  final ValueChanged<bool?>? onChanged;

  /// Creates a Bacon Design checkbox.
  const HiveCheckbox({
    super.key,
    this.autofocus = false,
    this.tristate = false,
    required this.value,
    this.activeColor,
    this.borderColor,
    this.checkColor,
    this.inactiveColor,
    this.tapAreaSizeValue = 40,
    this.focusNode,
    this.semanticLabel,
    required this.onChanged,
  });

  /// Creates a Bacon Design checkbox with label.
  @Deprecated(
      "Use BaconMenuItem with HiveCheckbox as a trailing widget instead.")
  static Widget withLabel(
    BuildContext context, {
    Key? key,
    bool autofocus = false,
    bool tristate = false,
    required bool? value,
    Color? activeColor,
    Color? borderColor,
    Color? checkColor,
    Color? inactiveColor,
    double tapAreaSizeValue = 40,
    FocusNode? focusNode,
    TextStyle? textStyle,
    required String label,
    required ValueChanged<bool?>? onChanged,
  }) {
    final bool isInteractive = onChanged != null;

    final Color effectiveTextColor =
        context.hiveTheme?.checkboxTheme.colors.textColor ??
            HiveTokens.light.modes.content.primary;

    final TextStyle effectiveTextStyle =
        context.hiveTheme?.checkboxTheme.sizes.sm.textStyle ??
            HiveTokens.light.typography.label.sm;

    final TextStyle resolvedTextStyle =
        effectiveTextStyle.copyWith(color: effectiveTextColor).merge(textStyle);

    final double effectiveDisabledOpacityValue =
        HiveTokens.light.opacities.disabled;

    final Duration effectiveFocusEffectDuration =
        HiveEffectsTheme(tokens: HiveTokens.light)
            .controlFocusEffect
            .effectDuration;

    return GestureDetector(
      onTap: () => onChanged?.call(!value!),
      child: MouseRegion(
        cursor:
            isInteractive ? SystemMouseCursors.click : SystemMouseCursors.basic,
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: tapAreaSizeValue),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AnimatedOpacity(
                opacity: isInteractive ? 1 : effectiveDisabledOpacityValue,
                duration: effectiveFocusEffectDuration,
                child: DefaultTextStyle(
                  style: resolvedTextStyle,
                  child: Text(label),
                ),
              ),
              const SizedBox(width: 12),
              HiveCheckbox(
                key: key,
                autofocus: autofocus,
                tristate: tristate,
                value: value,
                activeColor: activeColor,
                borderColor: borderColor,
                checkColor: checkColor,
                inactiveColor: inactiveColor,
                tapAreaSizeValue: 0,
                focusNode: focusNode,
                onChanged: onChanged,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HiveCheckbox> createState() => _HiveCheckboxState();
}

class _HiveCheckboxState extends State<HiveCheckbox>
    with TickerProviderStateMixin, ToggleableStateMixin {
  final utils.HiveCheckboxPainter _painter = utils.HiveCheckboxPainter();

  bool? _previousValue;

  @override
  ValueChanged<bool?>? get onChanged => widget.onChanged;

  @override
  bool get tristate => widget.tristate;

  @override
  bool? get value => widget.value;

  BorderSide? _resolveSide(BorderSide? side) {
    if (side is WidgetStateBorderSide) {
      return WidgetStateProperty.resolveAs<BorderSide?>(side, states);
    }

    if (!states.contains(WidgetState.selected)) return side;

    return null;
  }

  @override
  void initState() {
    super.initState();

    _previousValue = widget.value;
  }

  @override
  void didUpdateWidget(HiveCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.value != widget.value) {
      _previousValue = oldWidget.value;
      animateToValue();
    }
  }

  @override
  void dispose() {
    _painter.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const Size size = Size(16, 16);

    final BorderRadiusGeometry effectiveBorderRadius =
        context.hiveTheme?.checkboxTheme.sizes.sm.borderRadius ??
            HiveTokens.light.shape.radii.sm;

    final Color effectiveActiveColor = widget.activeColor ??
        context.hiveTheme?.checkboxTheme.colors.activeColor ??
        HiveTokens.light.modes.action.active;

    final Color effectiveInactiveColor = widget.inactiveColor ??
        context.hiveTheme?.checkboxTheme.colors.inactiveColor ??
        HiveTokens.light.modes.action.disabled;

    final Color effectiveCheckColor = widget.checkColor ??
        context.hiveTheme?.checkboxTheme.colors.checkColor ??
        HiveTokens.light.modes.content.inverse;

    final Color effectiveBorderColor = widget.borderColor ??
        context.hiveTheme?.checkboxTheme.colors.borderColor ??
        HiveTokens.light.modes.border.primary;

    final Color effectiveFocusEffectColor =
        HiveEffectsTheme(tokens: HiveTokens.light)
            .controlFocusEffect
            .effectColor;

    final Duration effectiveFocusEffectDuration =
        HiveEffectsTheme(tokens: HiveTokens.light)
            .controlFocusEffect
            .effectDuration;

    final Curve effectiveFocusEffectCurve =
        HiveEffectsTheme(tokens: HiveTokens.light)
            .controlFocusEffect
            .effectCurve;

    final double effectiveFocusEffectExtent =
        HiveEffectsTheme(tokens: HiveTokens.light)
            .controlFocusEffect
            .effectExtent;

    final double effectiveDisabledOpacityValue =
        HiveTokens.light.opacities.disabled;

    final WidgetStateProperty<MouseCursor> effectiveMouseCursor =
        WidgetStateProperty.resolveWith<MouseCursor>((Set<WidgetState> states) {
      return WidgetStateMouseCursor.clickable.resolve(states);
    });

    return Semantics(
      label: widget.semanticLabel,
      checked: widget.value ?? false,
      mixed: widget.tristate ? widget.value == null : null,
      child: utils.TouchTargetPadding(
        minSize: Size(widget.tapAreaSizeValue, widget.tapAreaSizeValue),
        child: RepaintBoundary(
          child: utils.HiveFocusEffect(
            show: states.contains(WidgetState.focused),
            childBorderRadius: effectiveBorderRadius,
            effectColor: effectiveFocusEffectColor,
            effectCurve: effectiveFocusEffectCurve,
            effectDuration: effectiveFocusEffectDuration,
            effectExtent: effectiveFocusEffectExtent,
            child: AnimatedOpacity(
              opacity: states.contains(WidgetState.disabled)
                  ? effectiveDisabledOpacityValue
                  : 1,
              duration: effectiveFocusEffectDuration,
              child: buildToggleable(
                mouseCursor: effectiveMouseCursor,
                focusNode: widget.focusNode,
                autofocus: widget.autofocus,
                size: size,
                painter: _painter
                  ..position = position
                  ..activeColor = effectiveActiveColor
                  ..inactiveColor = effectiveInactiveColor
                  ..checkColor = effectiveCheckColor
                  ..value = value
                  ..previousValue = _previousValue
                  ..shape = utils.HiveSquircleBorder(
                      borderRadius:
                          effectiveBorderRadius.squircleBorderRadius(context))
                  ..side =
                      _resolveSide(BorderSide(color: effectiveBorderColor)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
