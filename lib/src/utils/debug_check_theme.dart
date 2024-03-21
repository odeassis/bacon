import 'package:bacon/src/theme/theme.dart';
import 'package:flutter/widgets.dart';

bool debugCheckHasBaconTheme(BuildContext context) {
  assert(() {
    if (context.widget is! BaconInheritedTheme &&
        context.getElementForInheritedWidgetOfExactType<
                BaconInheritedTheme>() ==
            null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No BaconTheme widget ancestor found.'),
        ErrorDescription(
          '''${context.widget.runtimeType} widgets require a BaconTheme widget ancestor.''',
        ),
        context.describeWidget(
          'The specific widget that could not find a BaconTheme ancestor was',
        ),
        context.describeOwnershipChain(
          'The ownership chain for the affected widget is',
        ),
        ErrorHint(
            'No BaconTheme ancestor could be found starting from the context '
            'that was passed to BaconTheme.of(). This can happen because the '
            'app is not wrapped with the Bacon widget.'),
      ]);
    }
    return true;
  }());
  return true;
}
