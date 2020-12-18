# Tint

Tint is a library for terminal string styling extended upon Dart's `String` type.

## Overview

```dart
// tint.dart
import 'package:tint/tint.dart';

void main() {
  print('underlined blue text on white background'
      .underline()
      .blue()
      .onWhite());
}
```

Run it inside a terminal, and you'll get something this.

<img src="https://i.imgur.com/7AOVfu9.png" />

## Installation

Install the latest version of tint as a dependency as shown in [pub.dev](https://pub.dev/packages/tint).

## API Documentation

For reference, all of the available APIs will be used as an example in the `example/main.dart` file.

**Foreground Colors**

- `black`
- `red`
- `green`
- `yellow`
- `blue`
- `magenta`
- `cyan`
- `white`
- `brightBlack` or `gray` or `grey`
- `brightRed`
- `brightGreen`
- `brightYellow`
- `brightBlue`
- `brightMagenta`
- `brightCyan`
- `brightWhite`

**Background Colors**

- `onBlack`
- `onRed`
- `onGreen`
- `onYellow`
- `onBlue`
- `onMagenta`
- `onCyan`
- `onWhite`
- `onBrightBlack` or `onGray` or `onGrey`
- `onBrightRed`
- `onBrightGreen`
- `onBrightYellow`
- `onBrightBlue`
- `onBrightMagenta`
- `onBrightCyan`
- `onBrightWhite`

**Attributes**

- `bold`
- `dim`
- `italic`
- `underline`
- `blink`
- `inverse`
- `strikethrough`

**Dynamic Colors**

- `rgb({int r, int g, int b})`
- `onRgb({int r, int g, int b})`

**Utilities**

- `reset` (reset the color using ANSI code)
- `strip` (remove all ANSI codes)

## Alternatives

Tint is an alternative to,

- [ansi_styles](https://pub.dev/packages/ansi_styles)
- [ansicolor](https://pub.dev/packages/ansicolor)

## Acknowledgement

Node's [chalk](https://github.com/chalk/chalk) is the library that inspired tint the most but the naming of the APIs such as `onMagenta` instead of `bgMagenta` and certain aspects of the library are mostly influenced by the [console](https://github.com/mitsuhiko/console) crate from Rust. The [ansicolor](https://pub.dev/packages/ansicolor) and [ansi_styles](https://pub.dev/packages/ansi_styles) packages also provide the same functionality but with a different delivery for the usage. I personally find this extension way more syntatically fun to use.

## License

MIT © Frenco Jobs
