import 'package:test/test.dart';
import 'package:tint/tint.dart';

void main() {
  group('tests for foreground colors > ', () {
    test('black', () {
      expect(''.black(), equals('\x1B[30m\x1B[39m'));
    });
    test('red', () {
      expect(''.red(), equals('\x1B[31m\x1B[39m'));
    });
    test('green', () {
      expect(''.green(), equals('\x1B[32m\x1B[39m'));
    });
    test('yellow', () {
      expect(''.yellow(), equals('\x1B[33m\x1B[39m'));
    });
    test('blue', () {
      expect(''.blue(), equals('\x1B[34m\x1B[39m'));
    });
    test('magenta', () {
      expect(''.magenta(), equals('\x1B[35m\x1B[39m'));
    });
    test('cyan', () {
      expect(''.cyan(), equals('\x1B[36m\x1B[39m'));
    });
    test('white', () {
      expect(''.white(), equals('\x1B[37m\x1B[39m'));
    });

    test('brightBlack', () {
      expect(''.brightBlack(), equals('\x1B[90m\x1B[39m'));
    });
    test('brightRed', () {
      expect(''.brightRed(), equals('\x1B[91m\x1B[39m'));
    });
    test('brightGreen', () {
      expect(''.brightGreen(), equals('\x1B[92m\x1B[39m'));
    });
    test('brightYellow', () {
      expect(''.brightYellow(), equals('\x1B[93m\x1B[39m'));
    });
    test('brightBlue', () {
      expect(''.brightBlue(), equals('\x1B[94m\x1B[39m'));
    });
    test('brightMagenta', () {
      expect(''.brightMagenta(), equals('\x1B[95m\x1B[39m'));
    });
    test('brightCyan', () {
      expect(''.brightCyan(), equals('\x1B[96m\x1B[39m'));
    });
    test('brightWhite', () {
      expect(''.brightWhite(), equals('\x1B[97m\x1B[39m'));
    });
  });

  group('tests for background colors > ', () {
    test('onBlack', () {
      expect(''.onBlack(), equals('\x1B[40m\x1B[49m'));
    });
    test('onRed', () {
      expect(''.onRed(), equals('\x1B[41m\x1B[49m'));
    });
    test('onGreen', () {
      expect(''.onGreen(), equals('\x1B[42m\x1B[49m'));
    });
    test('onYellow', () {
      expect(''.onYellow(), equals('\x1B[43m\x1B[49m'));
    });
    test('onBlue', () {
      expect(''.onBlue(), equals('\x1B[44m\x1B[49m'));
    });
    test('onMagenta', () {
      expect(''.onMagenta(), equals('\x1B[45m\x1B[49m'));
    });
    test('onCyan', () {
      expect(''.onCyan(), equals('\x1B[46m\x1B[49m'));
    });
    test('onWhite', () {
      expect(''.onWhite(), equals('\x1B[47m\x1B[49m'));
    });

    test('onBrightBlack', () {
      expect(''.onBrightBlack(), equals('\x1B[100m\x1B[49m'));
    });
    test('onBrightRed', () {
      expect(''.onBrightRed(), equals('\x1B[101m\x1B[49m'));
    });
    test('onBrightGreen', () {
      expect(''.onBrightGreen(), equals('\x1B[102m\x1B[49m'));
    });
    test('onBrightYellow', () {
      expect(''.onBrightYellow(), equals('\x1B[103m\x1B[49m'));
    });
    test('onBrightBlue', () {
      expect(''.onBrightBlue(), equals('\x1B[104m\x1B[49m'));
    });
    test('onBrightMagenta', () {
      expect(''.onBrightMagenta(), equals('\x1B[105m\x1B[49m'));
    });
    test('onBrightCyan', () {
      expect(''.onBrightCyan(), equals('\x1B[106m\x1B[49m'));
    });
    test('onBrightWhite', () {
      expect(''.onBrightWhite(), equals('\x1B[107m\x1B[49m'));
    });
  });

  group('tests for attributes > ', () {
    test('bold', () {
      expect(''.bold(), equals('\x1B[1m\x1B[22m'));
    });
    test('dim', () {
      expect(''.dim(), equals('\x1B[2m\x1B[22m'));
    });
    test('italic', () {
      expect(''.italic(), equals('\x1B[3m\x1B[23m'));
    });
    test('underline', () {
      expect(''.underline(), equals('\x1B[4m\x1B[24m'));
    });
    test('blink', () {
      expect(''.blink(), equals('\x1B[5m\x1B[25m'));
    });
    test('inverse', () {
      expect(''.inverse(), equals('\x1B[7m\x1B[27m'));
    });
    test('hidden', () {
      expect(''.hidden(), equals('\x1B[8m\x1B[28m'));
    });
    test('strikethrough', () {
      expect(''.strikethrough(), equals('\x1B[9m\x1B[29m'));
    });
  });

  group('tests for aliases > ', () {
    test('gray', () {
      expect(''.gray(), equals(''.brightBlack()));
    });
    test('grey', () {
      expect(''.grey(), equals(''.brightBlack()));
    });
    test('onGray', () {
      expect(''.onGray(), equals(''.onBrightBlack()));
    });
    test('onGrey', () {
      expect(''.onGrey(), equals(''.onBrightBlack()));
    });
  });

  group('tests for color methods > ', () {
    test('rgb', () {
      expect(''.rgb(), equals('\x1B[38;5;231m\x1B[0m'));
    });
    test('onRgb', () {
      expect(''.onRgb(), equals('\x1B[48;5;231m\x1B[0m'));
    });
  });

  group('tests for utils > ', () {
    test('reset', () {
      expect(''.reset(), equals('\x1B[0m\x1B[0m'));
    });
    test('strip', () {
      expect(''.black().onWhite().strip(), equals(''));
    });
  });
}
