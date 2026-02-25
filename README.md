# Animated Count Text

A lightweight Flutter widget that smoothly animates numeric text whenever the value changes.

Supports integers, decimals, currency symbols, percentages, custom curves, and configurable precision.

---

## Installation

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  animated_count_text: ^1.0.0
```

Then run:

```bash
flutter pub get
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

| Property         | Type        | Description |
|------------------|------------|------------|
| `value`          | `num`      | The number to animate to |
| `fractionDigits` | `int`      | Decimal precision (default: 0) |
| `prefix`         | `String?`  | Text before the number |
| `suffix`         | `String?`  | Text after the number |
| `duration`       | `Duration` | Animation duration |
| `curve`          | `Curve`    | Animation curve |
| `style`          | `TextStyle?` | Text styling |
| `textAlign`      | `TextAlign?` | Text alignment |

---

## License

MIT License

https://opensource.org/licenses/MIT