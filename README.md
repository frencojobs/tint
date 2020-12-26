# Tint

Tint is a library for terminal string styling extended upon Dart's `String` type.

<br>

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

The snippet will produce an underlined blue text on a white background once you run it inside a terminal.

The example at `example/main.dart` file contains examples for all APIs. Try running it and you'll get something this.

<img src="https://i.imgur.com/raO2b4J.png" />

<br>

## Installation

Install the latest version of tint as a dependency as shown in [pub.dev](https://pub.dev/packages/tint).

<br>

## API Documentation

For reference, all of the available APIs will be used as an example in the `example/main.dart` file.

<br>

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

<br>

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

<br>

**Attributes**

- `bold`
- `dim`
- `italic`
- `underline`
- `blink`
- `inverse`
- `strikethrough`

<br>

**Dynamic Colors**

- `rgb({int r, int g, int b})`
- `onRgb({int r, int g, int b})`

<br>

**Utilities**

- `reset` (reset the color using ANSI code)
- `strip` (remove all ANSI codes)

<br>

## Alternatives

Tint is an alternative to,

- [ansi_styles](https://pub.dev/packages/ansi_styles)
- [ansicolor](https://pub.dev/packages/ansicolor)

<br>

## Acknowledgement

Node's [chalk](https://github.com/chalk/chalk) is the library that inspired tint the most but the naming of the APIs such as `onMagenta` instead of `bgMagenta` and certain aspects of the library are mostly influenced by the [console](https://github.com/mitsuhiko/console) crate from Rust. The [ansicolor](https://pub.dev/packages/ansicolor) and [ansi_styles](https://pub.dev/packages/ansi_styles) packages also provide the same functionality but with a different delivery for the usage. But I personally find extension methods syntactically more fun to use.

<br>

## License

MIT © Frenco Jobs
