import 'package:bacon/bacon.dart';
import 'package:flutter/material.dart';

class ErrorMessages extends StatelessWidget {
  final List<String> errors;

  /// Creates a default error message widget, utilized in [BaconTextInputGroup].
  const ErrorMessages({super.key, required this.errors});

  List<String> get _nonEmptyErrors =>
      errors.where((String error) => error.isNotEmpty).toList();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(_nonEmptyErrors.length * 2 - 1, (int index) {
        final int derivedIndex = index ~/ 2;

        return index.isEven
            ? ErrorMessage(errorText: _nonEmptyErrors[derivedIndex])
            : SizedBox(height: context.componentScale?.x5s ?? 4);
      }),
    );
  }
}

class ErrorMessage extends StatefulWidget {
  final String errorText;
  final Duration duration;
  final Curve curve;

  /// Creates a default error message widget, utilized in [BaconTextInput] and [BaconTextArea].
  const ErrorMessage({
    super.key,
    required this.errorText,
    this.duration = const Duration(milliseconds: 167),
    this.curve = Curves.fastOutSlowIn,
  });

  @override
  State<ErrorMessage> createState() => _ErrorMessageState();
}

class _ErrorMessageState extends State<ErrorMessage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _opacityAnimation = CurvedAnimation(
      parent: _controller,
      curve: widget.curve,
      reverseCurve: widget.curve.flipped,
    );

    _controller
      ..value = 0.0
      ..forward();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacityAnimation,
      child: Row(
        children: [
          Icon(Icons.error, size: context.componentScale?.x2s ?? 16),
          SizedBox(width: context.componentScale?.x5s ?? 4),
          Text(widget.errorText),
        ],
      ),
    );
  }
}
