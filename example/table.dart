import 'dart:io' show stdout;

import 'package:tint/tint.dart';

void main() {
  final buffer = StringBuffer();

  for (final r in range(0, 6)) {
    buffer.writeln();
    for (final g in range(0, 6)) {
      for (final b in range(0, 6)) {
        final n = r * 36 + g * 6 + b + 16;
        final l = ' ${n.toString().padLeft(3, '0')} ';

        buffer.write(
          l.onRgb(
            r: ((r / 5) * 225).toInt(),
            g: ((g / 5) * 225).toInt(),
            b: ((b / 5) * 225).toInt(),
          ),
        );

        buffer.write(
          l.rgb(
            r: ((r / 5) * 225).toInt(),
            g: ((g / 5) * 225).toInt(),
            b: ((b / 5) * 225).toInt(),
          ),
        );
      }
      buffer.writeln();
    }
  }

  stdout.writeln(buffer);
}

Iterable<int> range(int start, int end) sync* {
  for (var i = start; i < end; i++) {
    yield i;
  }
}
