import 'dart:io' show stdout;

/// Indicate whether ANSI escape sequences are supported by the
/// [stdout] of current terminal or not, as a flag to show
/// if the library will work correctly or else.
///
/// If `false` the library won't add ANSI escapes to [String],
/// leaving this lib not functioning without completely breaking the program.
bool get supportsAnsiColor => stdout.supportsAnsiEscapes;
