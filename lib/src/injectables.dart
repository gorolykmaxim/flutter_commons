import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

/// Use this class to show various dialog types, to make classes, using it,
/// unit-testable.
class InjectableDialogContainer {
  Future<TimeOfDay> showTimePicker({@required BuildContext context, @required TimeOfDay initialTime, TransitionBuilder builder, bool useRootNavigator = true}) {
    return material.showTimePicker(context: context, initialTime: initialTime, builder: builder, useRootNavigator: useRootNavigator);
  }
}