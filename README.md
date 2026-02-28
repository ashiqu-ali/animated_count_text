<p align="center">
  <a href="https://pub.dev/packages/animated_count_text">
    <img src="https://img.shields.io/pub/v/animated_count_text?color=blueviolet"/>
  </a>
  <a href="https://pub.dev/packages/animated_count_text/score">
    <img src="https://img.shields.io/pub/points/animated_count_text?logo=dart"/>
  </a>
  <a href="https://pub.dev/packages/animated_count_text/score">
    <img src="https://img.shields.io/pub/likes/animated_count_text?logo=dart"/>
  </a>
  <img src="https://img.shields.io/badge/Platform-Flutter-blue?logo=flutter"/>
  <a href="https://ashiqu-ali.medium.com/animatedcount-a-lightweight-flutter-package-to-smoothly-animate-numbers-a536b18570f4">
    <img src="https://img.shields.io/badge/DOCS-Medium-black?logo=medium"/>
  </a>
  <a href="https://github.com/ashiqu-ali/animated_count_text">
    <img src="https://img.shields.io/github/stars/ashiqu-ali/animated_count_text?style=social"/>
  </a>
  <a href="https://github.com/ashiqu-ali/animated_count_text/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/ashiqu-ali/animated_count_text"/>
  </a>
</p>

# Animated Count Text

A lightweight Flutter widget that smoothly animates numeric text whenever the value changes.

Supports integers, decimals, currency symbols, percentages, custom curves, configurable precision, and safe string parsing.

---

## Preview

<p align="center">
  <img src="https://raw.githubusercontent.com/ashiqu-ali/animated_count_text/refs/heads/main/assets/demo.gif" height="400"/>
</p>

---

## Use this package as a library

### Depend on it

Run this command:

With Flutter:

```bash
flutter pub add animated_count_text
```

This will add a line like this to your package's `pubspec.yaml`:

```yaml
dependencies:
  animated_count_text: ^latest_version
```

Alternatively, you can manually add it to your `pubspec.yaml` and run:

```bash
flutter pub get
```

---

### Import it

Now in your Dart code, you can use:

```dart
import 'package:animated_count_text/animated_count_text.dart';
```

---

## Usage

### Basic Example

```dart
AnimatedCount(
  value: 30,
)
```

---

### With Currency

```dart
AnimatedCount(
  value: 2500,
  prefix: "₹ ",
  duration: Duration(milliseconds: 800),
)
```

---

### With Decimal Precision

```dart
AnimatedCount(
  value: 12.3456,
  fractionDigits: 2,
)
```

---

### With Percentage

```dart
AnimatedCount(
  value: 87.5,
  suffix: "%",
  fractionDigits: 1,
)
```

---

## 🆕 Safe String Parsing Extension

The package also includes a helpful string extension for safely converting strings to numbers without crashes.

### Example

```dart
final intValue = "1200".toInt();        // 1200
final doubleValue = "45.75".toDouble(); // 45.75
final invalid = "abc".toInt();          // 0
```

Perfect for dynamic animations where input may come from APIs or text fields.

---

## Properties

| Property         | Type          | Description |
|------------------|--------------|-------------|
| `value`          | `num`        | The number to animate to |
| `fractionDigits` | `int`        | Decimal precision (default: 0) |
| `prefix`         | `String?`    | Text before the number |
| `suffix`         | `String?`    | Text after the number |
| `duration`       | `Duration`   | Animation duration |
| `curve`          | `Curve`      | Animation curve |
| `style`          | `TextStyle?` | Text styling |
| `textAlign`      | `TextAlign?` | Text alignment |

---

## 📘 Documentation

<p align="center">
  <a href="https://ashiqu-ali.medium.com/animatedcount-a-lightweight-flutter-package-to-smoothly-animate-numbers-a536b18570f4">
    <img src="https://cdn-icons-png.flaticon.com/512/5968/5968885.png" width="28"/>
  </a>
</p>

Read the full guide and implementation details on Medium:

[DOCS](https://ashiqu-ali.medium.com/animatedcount-a-lightweight-flutter-package-to-smoothly-animate-numbers-a536b18570f4)

This keeps design consistent with your top badges.

---

## ☕ Support

<p align="center">
  <a href="https://www.buymeacoffee.com/ashiqu.ali">
    <img src="https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=%E2%98%95&slug=ashiqu.ali&button_colour=FFDD00&font_colour=000000&font_family=Lato&outline_colour=000000&coffee_colour=ffffff" />
  </a>
</p>

---

## 🌐 Connect With Me

<p align="center">
  <a href="https://www.linkedin.com/in/ashiqu-ali">
    <img src="https://cdn-icons-png.flaticon.com/512/174/174857.png" width="30"/>
  </a>
  &nbsp;&nbsp;
  <a href="https://ashiqu-ali.medium.com/">
    <img src="https://cdn-icons-png.flaticon.com/512/5968/5968906.png" width="30"/>
  </a>
  &nbsp;&nbsp;
  <a href="https://www.instagram.com/ashiqu_ali_">
    <img src="https://cdn-icons-png.flaticon.com/512/174/174855.png" width="30"/>
  </a>
  &nbsp;&nbsp;
  <a href="http://x.com/ashiquali007">
    <img src="https://cdn-icons-png.flaticon.com/512/733/733579.png" width="30"/>
  </a>
</p>

---
