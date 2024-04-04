import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/effects/effects_theme.dart';
import 'package:bacon/src/theme/tokens/opacities.dart';
import 'package:bacon/src/utils/checkbox_painter.dart';
import 'package:bacon/src/utils/extensions.dart';
import 'package:bacon/src/utils/shared/common/effects/focus_effect.dart';
import 'package:bacon/src/utils/squircle/squircle_border.dart';
import 'package:bacon/src/utils/touch_targert_padding.dart';
import 'package:flutter/material.dart';

class BaconCheckbox extends StatefulWidget {
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
  const BaconCheckbox({
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
      "Use BaconMenuItem with BaconCheckbox as a trailing widget instead.")
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
        context.baconTheme?.checkboxTheme.colors.textColor ??
            BaconTokens.light.modes.content.primary;

    final TextStyle effectiveTextStyle =
        context.baconTheme?.checkboxTheme.sizes.sm.textStyle ??
            BaconTokens.light.typography.label.sm;

    final TextStyle resolvedTextStyle =
        effectiveTextStyle.copyWith(color: effectiveTextColor).merge(textStyle);

    final double effectiveDisabledOpacityValue =
        context.opacities?.disabled ?? BaconOpacities.opacities.disabled;

    final Duration effectiveFocusEffectDuration =
        context.baconEffects?.controlFocusEffect.effectDuration ??
            BaconEffectsTheme(tokens: BaconTokens.light)
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
              BaconCheckbox(
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
  State<BaconCheckbox> createState() => _BaconCheckboxState();
}

class _BaconCheckboxState extends State<BaconCheckbox>
    with TickerProviderStateMixin, ToggleableStateMixin {
  final BaconCheckboxPainter _painter = BaconCheckboxPainter();

  bool? _previousValue;

  @override
  ValueChanged<bool?>? get onChanged => widget.onChanged;

  @override
  bool get tristate => widget.tristate;

  @override
  bool? get value => widget.value;

  BorderSide? _resolveSide(BorderSide? side) {
    if (side is MaterialStateBorderSide) {
      return MaterialStateProperty.resolveAs<BorderSide?>(side, states);
    }

    if (!states.contains(MaterialState.selected)) return side;

    return null;
  }

  @override
  void initState() {
    super.initState();

    _previousValue = widget.value;
  }

  @override
  void didUpdateWidget(BaconCheckbox oldWidget) {
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
        context.baconTheme?.checkboxTheme.sizes.sm.borderRadius ??
            BaconTokens.light.shape.radii.sm;

    final Color effectiveActiveColor = widget.activeColor ??
        context.baconTheme?.checkboxTheme.colors.activeColor ??
        BaconTokens.light.modes.action.active;

    final Color effectiveInactiveColor = widget.inactiveColor ??
        context.baconTheme?.checkboxTheme.colors.inactiveColor ??
        BaconTokens.light.modes.action.disabled;

    final Color effectiveCheckColor = widget.checkColor ??
        context.baconTheme?.checkboxTheme.colors.checkColor ??
        BaconTokens.light.modes.content.inverse;

    final Color effectiveBorderColor = widget.borderColor ??
        context.baconTheme?.checkboxTheme.colors.borderColor ??
        BaconTokens.light.modes.border.primary;

    final Color effectiveFocusEffectColor =
        context.baconEffects?.controlFocusEffect.effectColor ??
            BaconEffectsTheme(tokens: BaconTokens.light)
                .controlFocusEffect
                .effectColor;

    final Duration effectiveFocusEffectDuration =
        context.baconEffects?.controlFocusEffect.effectDuration ??
            BaconEffectsTheme(tokens: BaconTokens.light)
                .controlFocusEffect
                .effectDuration;

    final Curve effectiveFocusEffectCurve =
        context.baconEffects?.controlFocusEffect.effectCurve ??
            BaconEffectsTheme(tokens: BaconTokens.light)
                .controlFocusEffect
                .effectCurve;

    final double effectiveFocusEffectExtent =
        context.baconEffects?.controlFocusEffect.effectExtent ??
            BaconEffectsTheme(tokens: BaconTokens.light)
                .controlFocusEffect
                .effectExtent;

    final double effectiveDisabledOpacityValue =
        context.opacities?.disabled ?? BaconOpacities.opacities.disabled;

    final MaterialStateProperty<MouseCursor> effectiveMouseCursor =
        MaterialStateProperty.resolveWith<MouseCursor>(
            (Set<MaterialState> states) {
      return MaterialStateMouseCursor.clickable.resolve(states);
    });

    return Semantics(
      label: widget.semanticLabel,
      checked: widget.value ?? false,
      mixed: widget.tristate ? widget.value == null : null,
      child: TouchTargetPadding(
        minSize: Size(widget.tapAreaSizeValue, widget.tapAreaSizeValue),
        child: RepaintBoundary(
          child: BaconFocusEffect(
            show: states.contains(MaterialState.focused),
            childBorderRadius: effectiveBorderRadius,
            effectColor: effectiveFocusEffectColor,
            effectCurve: effectiveFocusEffectCurve,
            effectDuration: effectiveFocusEffectDuration,
            effectExtent: effectiveFocusEffectExtent,
            child: AnimatedOpacity(
              opacity: states.contains(MaterialState.disabled)
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
                  ..shape = BaconSquircleBorder(
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
