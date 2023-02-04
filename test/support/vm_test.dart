@TestOn('vm')
import 'dart:io';

import 'package:test/test.dart';
import 'package:tint/tint.dart';

void main() {
  test('ANSI should be supported on vm', () {
    expect(supportsAnsiColor, equals(stdout.supportsAnsiEscapes));
  });
}
