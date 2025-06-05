# ValidateIt

A lightweight collection of form validation helpers for Dart and Flutter projects. The package focuses on simple utilities for validating user input such as email addresses and South African phone numbers.

## Features

- **Email validation** using the [`email_validator`](https://pub.dev/packages/email_validator) package.
- **Phone number validation** for South Africa powered by [`dlibphonenumber`](https://pub.dev/packages/dlibphonenumber).
- **Required field check** that ensures a value is present.
- **`isNullOrEmpty` utility** to guard against empty input.

## Installation

Add `validateit` to your project by including it in your `pubspec.yaml` dependencies:

```yaml
dependencies:
  validateit:
    path: ../validateit
```

Then run `flutter pub get` or `dart pub get` to install the package.

## Usage

Import the package and use the helper functions to validate form fields. Each function returns `null` when the value is valid or an error message otherwise.

```dart
import 'package:validateit/validateit.dart';

void main() {
  // Email
  final emailError = email('user@example.com');

  // Phone number
  final phoneError = phone('0821234567');

  // Required field
  final requiredError = required('', 'name');

  // Check for null or empty string
  final isEmpty = isNullOrEmpty('');
}
```

See the [`example` directory](example/) for full runnable examples demonstrating each validator.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests to improve the package.

