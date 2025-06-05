import 'package:email_validator/email_validator.dart';

/// Validate an email address using the [email_validator] package.
///
/// Returns an error message when [v] is not a valid email, otherwise `null`.
String? validateEmail(String? v) {
  if (v == null || !EmailValidator.validate(v)) {
    return 'Please enter a valid email';
  }
  return null;
}
