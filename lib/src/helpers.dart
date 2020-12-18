import 'supports_ansi.dart'
    if (dart.library.io) 'supports_ansi_io.dart'
    if (dart.library.html) 'supports_ansi_web.dart';

String Function(String) format(dynamic start, dynamic end) =>
    (x) => !supportsAnsiColor ? '' : '\x1B[${start}m$x\x1B[${end}m';

int rgbToAnsiCode(int r, int g, int b) =>
    (((r.clamp(0, 255) / 255) * 5).toInt() * 36 +
            ((g.clamp(0, 255) / 255) * 5).toInt() * 6 +
            ((b.clamp(0, 255) / 255) * 5).toInt() +
            16)
        .clamp(0, 256)
        .toInt();

final ansiPattern = RegExp([
  '[\\u001B\\u009B][[\\]()#;?]*(?:(?:(?:[a-zA-Z\\d]*(?:;[-a-zA-Z\\d\\/#&.:=?%@~_]*)*)?\\u0007)',
  '(?:(?:\\d{1,4}(?:;\\d{0,4})*)?[\\dA-PR-TZcf-ntqry=><~]))'
].join('|'));
