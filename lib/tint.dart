library tint;

import 'src/helpers.dart';
export 'src/supports_ansi.dart'
    if (dart.library.io) 'src/supports_ansi_io.dart'
    if (dart.library.html) 'src/supports_ansi_web.dart';

/// An extension on [String] by Tint.
extension Tint on String {
  // Foreground Colors
  /// Format this string with ANSI to be colored black.
  ///
  /// Returns default string if ANSI is not supported.
  String black() => format(30, 39)(this);

  /// Format this string with ANSI to be colored red.
  ///
  /// Returns default string if ANSI is not supported.
  String red() => format(31, 39)(this);

  /// Format this string with ANSI to be colored green.
  ///
  /// Returns default string if ANSI is not supported.
  String green() => format(32, 39)(this);

  /// Format this string with ANSI to be colored yellow.
  ///
  /// Returns default string if ANSI is not supported.
  String yellow() => format(33, 39)(this);

  /// Format this string with ANSI to be colored blue.
  ///
  /// Returns default string if ANSI is not supported.
  String blue() => format(34, 39)(this);

  /// Format this string with ANSI to be colored magenta.
  ///
  /// Returns default string if ANSI is not supported.
  String magenta() => format(35, 39)(this);

  /// Format this string with ANSI to be colored cyan.
  ///
  /// Returns default string if ANSI is not supported.
  String cyan() => format(36, 39)(this);

  /// Format this string with ANSI to be colored white.
  ///
  /// Returns default string if ANSI is not supported.
  String white() => format(37, 39)(this);

  /// Format this string with ANSI to be colored bright black or gray or grey.
  ///
  /// Returns default string if ANSI is not supported.
  String brightBlack() => format(90, 39)(this);

  /// Format this string with ANSI to be colored bright red.
  ///
  /// Returns default string if ANSI is not supported.
  String brightRed() => format(91, 39)(this);

  /// Format this string with ANSI to be colored bright green.
  ///
  /// Returns default string if ANSI is not supported.
  String brightGreen() => format(92, 39)(this);

  /// Format this string with ANSI to be colored bright yellow.
  ///
  /// Returns default string if ANSI is not supported.
  String brightYellow() => format(93, 39)(this);

  /// Format this string with ANSI to be colored bright blue.
  ///
  /// Returns default string if ANSI is not supported.
  String brightBlue() => format(94, 39)(this);

  /// Format this string with ANSI to be colored bright magenta.
  ///
  /// Returns default string if ANSI is not supported.
  String brightMagenta() => format(95, 39)(this);

  /// Format this string with ANSI to be colored bright cyan.
  ///
  /// Returns default string if ANSI is not supported.
  String brightCyan() => format(96, 39)(this);

  /// Format this string with ANSI to be colored bright white.
  ///
  /// Returns default string if ANSI is not supported.
  String brightWhite() => format(97, 39)(this);

  // Background Colors
  /// Format this string with ANSI adding a black background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onBlack() => format(40, 49)(this);

  /// Format this string with ANSI adding a red background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onRed() => format(41, 49)(this);

  /// Format this string with ANSI adding a green background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onGreen() => format(42, 49)(this);

  /// Format this string with ANSI adding a yellow background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onYellow() => format(43, 49)(this);

  /// Format this string with ANSI adding a blue background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onBlue() => format(44, 49)(this);

  /// Format this string with ANSI adding a magenta background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onMagenta() => format(45, 49)(this);

  /// Format this string with ANSI adding a cyan background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onCyan() => format(46, 49)(this);

  /// Format this string with ANSI adding a white background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onWhite() => format(47, 49)(this);

  /// Format this string with ANSI adding a bright black
  /// or gray or grey background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onBrightBlack() => format(100, 49)(this);

  /// Format this string with ANSI adding a bright red
  /// background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onBrightRed() => format(101, 49)(this);

  /// Format this string with ANSI adding a bright green
  /// background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onBrightGreen() => format(102, 49)(this);

  /// Format this string with ANSI adding a bright yellow
  /// background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onBrightYellow() => format(103, 49)(this);

  /// Format this string with ANSI adding a bright blue
  /// background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onBrightBlue() => format(104, 49)(this);

  /// Format this string with ANSI adding a bright magenta
  /// background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onBrightMagenta() => format(105, 49)(this);

  /// Format this string with ANSI adding a bright cyan
  /// background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onBrightCyan() => format(106, 49)(this);

  /// Format this string with ANSI adding a bright white
  /// background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onBrightWhite() => format(107, 49)(this);

  // Attributes
  /// Format this string with ANSI to be styled as a bold text.
  ///
  /// Returns default string if ANSI is not supported.
  String bold() => format(1, 22)(this);

  /// Format this string with ANSI to make it appear as a dimmed text.
  ///
  /// Returns default string if ANSI is not supported.
  String dim() => format(2, 22)(this);

  /// Format this string with ANSI to make it appear italic.
  ///
  /// Returns default string if ANSI is not supported.
  String italic() => format(3, 23)(this);

  /// Format this string with ANSI adding an underline.
  ///
  /// Returns default string if ANSI is not supported.
  String underline() => format(4, 24)(this);

  /// Format this string with ANSI making it appear blinking.
  ///
  /// Returns default string if ANSI is not supported.
  String blink() => format(5, 25)(this);

  /// Format this string with ANSI inverting the style.
  ///
  /// Returns default string if ANSI is not supported.
  String inverse() => format(7, 27)(this);

  /// Format this string with ANSI making it invisible.
  ///
  /// Returns default string if ANSI is not supported.
  String hidden() => format(8, 28)(this);

  /// Format this string with ANSI adding a strike through the text.
  ///
  /// Returns default string if ANSI is not supported.
  String strikethrough() => format(9, 29)(this);

  // Aliases
  /// Format this string with ANSI to be colored bright black or gray or grey.
  ///
  /// Returns default string if ANSI is not supported.
  String gray() => brightBlack();

  /// Format this string with ANSI to be colored bright black or gray or grey.
  ///
  /// Returns default string if ANSI is not supported.
  String grey() => brightBlack();

  /// Format this string with ANSI adding a bright black
  /// or gray or grey background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onGray() => onBrightBlack();

  /// Format this string with ANSI adding a bright black
  /// or gray or grey background color.
  ///
  /// Returns default string if ANSI is not supported.
  String onGrey() => onBrightBlack();

  // Color Methods
  /// Format this string with ANSI setting it's color the value defined
  /// as RGB parameters.
  ///
  /// [r]/[g]/[b] parameters can be an [int] in the range of `0` to `255`.
  String rgb({int r = 255, int g = 255, int b = 255}) {
    return format('38;5;${rgbToAnsiCode(r, g, b)}', 0)(this);
  }

  /// Format this string with ANSI setting it's background color the value
  /// defined as RGB parameters.
  ///
  /// [r]/[g]/[b] parameters can be an [int] in the range of `0` to `255`.
  String onRgb({int r = 255, int g = 255, int b = 255}) {
    return format('48;5;${rgbToAnsiCode(r, g, b)}', 0)(this);
  }

  // Utils
  /// Format this string with ANSI resetting the previous color chains.
  ///
  /// Returns default string if ANSI is not supported.
  String reset() => format(0, 0)(this);

  /// If exists, all ANSI sequences will be removed from this string.
  String strip() {
    // ignore: unnecessary_this
    return this.replaceAll(ansiPattern, '');
  }
}
