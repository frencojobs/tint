import 'dart:io' show stdout;
import 'package:tint/tint.dart';

void main() {
  // Attributes
  final bold = 'bold'.bold();
  final dim = 'dim'.dim();
  final italic = 'italic'.italic();
  final underline = 'underline'.underline();
  final blink = 'blink'.blink();
  final inverse = 'inverse'.inverse();
  final hidden = 'hidden'.hidden();
  final strikethrough = 'strikethrough'.strikethrough();
  // Foreground Colors
  final black = 'black'.black();
  final red = 'red'.red();
  final green = 'green'.green();
  final yellow = 'yellow'.yellow();
  final blue = 'blue'.blue();
  final magenta = 'magenta'.magenta();
  final cyan = 'cyan'.cyan();
  final white = 'white'.white();
  final gray = 'gray'.gray();
  // Background Colors
  final onBlack = 'onBlack'.onBlack();
  final onRed = 'onRed'.onRed();
  final onGreen = 'onGreen'.onGreen();
  final onYellow = 'onYellow'.onYellow();
  final onBlue = 'onBlue'.onBlue();
  final onMagenta = 'onMagenta'.onMagenta();
  final onCyan = 'onCyan'.onCyan();
  final onWhite = 'onWhite'.onWhite();
  final onGray = 'onGray'.onGray();

  final all = [
    bold,
    dim,
    italic,
    underline,
    blink,
    inverse,
    hidden,
    strikethrough,
    black,
    red,
    green,
    yellow,
    blue,
    magenta,
    cyan,
    white,
    gray,
    onBlack,
    onRed,
    onGreen,
    onYellow,
    onBlue,
    onMagenta,
    onCyan,
    onWhite,
    onGray
  ];

  stdout.writeln(all.join(' '));
  // stripped
  stdout.writeln(all.join(' ').strip());
}
