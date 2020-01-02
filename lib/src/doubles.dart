import 'package:flutter/widgets.dart';

/// Use this class when you need to test a [StatefulWidget] changing it's
/// state. Pass instance of this class to a method of [State], that calls
/// [setState] and make the method call [setState] of the passed instance.
/// [StateDouble] executes callback, passed to it's [setState], synchronously.
class StateDouble extends State {
  @override
  Widget build(BuildContext context) {
    return null;
  }

  @override
  void setState(VoidCallback fn) {
    fn();
  }
}