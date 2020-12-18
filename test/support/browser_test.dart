@TestOn('browser')
import 'package:test/test.dart';
import 'package:tint/tint.dart';

void main() {
  test('ANSI should be supported on browser', () {
    expect(supportsAnsiColor, equals(true));
  });
}
