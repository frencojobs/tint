import 'package:test/test.dart';
import 'package:tint/src/helpers.dart';

void main() {
  final buffer = StringBuffer();

  setUpAll(() => buffer.write(format(0, 0)('')));
  tearDownAll(() => buffer.clear());

  test('format should work as expected', () {
    expect(buffer.toString(), equals('\x1B[0m\x1B[0m'));
  });

  test('regex to strip codes should work as expected', () {
    final stripped = buffer.toString().replaceAll(ansiPattern, '');
    expect(stripped, isEmpty);
  });

  test('rgb to ansi conversion should work as expected', () {
    expect(rgbToAnsiCode(0, 0, 0), equals(16));
    expect(rgbToAnsiCode(255, 255, 255), equals(231));
  });
}
