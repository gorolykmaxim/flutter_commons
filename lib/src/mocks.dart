import 'package:flutter/widgets.dart';
import 'package:mockito/mockito.dart';

/// If you are trying to create a [Mock] of a [State], instead of extending
/// [Mock] directly - extend [DiagnosticableMixinFriendlyMock].
abstract class DiagnosticableMixinFriendlyMock extends Mock {
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.debug });
}