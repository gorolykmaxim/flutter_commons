import 'package:flutter_commons/flutter_commons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StateDouble', () {
    test('executes setState() immediately', () {
      bool stateSet = false;
      StateDouble().setState(() => stateSet = true);
      expect(stateSet, isTrue);
    });
  });
}