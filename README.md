# Animated Count Text

A lightweight Flutter widget that smoothly animates numeric text whenever the value changes.

Supports integers, decimals, currency symbols, percentages, custom curves, and configurable precision.

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

## License

MIT License

https://opensource.org/licenses/MIT
