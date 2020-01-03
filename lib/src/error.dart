import 'package:flutter/material.dart';

/// Snack bar that displays text of the error.
class ErrorSnackBar extends SnackBar {
  /// Display [error] in a snack bar for [duration].
  ErrorSnackBar({
    @required Object error,
    Duration duration
  }) : super(content: Text(error), duration: duration ?? const Duration(seconds: 5));
}