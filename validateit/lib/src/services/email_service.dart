import 'package:email_validator/email_validator.dart';

/// Validate an email address using the [email_validator] package.
///
/// Returns an error message when [value] is not a valid email
///
/// otherwise it returns `null` (No validation message).
String? validateEmail(String? value) {
  /// Email is invalid
  if (value == null || !EmailValidator.validate(value)) {
    /// TODO: custom invalid email message
    return 'Please enter a valid email address';
  }

  /// Email is valid
  return null;
}
