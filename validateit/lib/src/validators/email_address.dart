import '../services/email_service.dart';
import '../utils/is_string_null_or_empty.dart';
import 'required_field.dart';

/// Validate an email address.
///
/// When [isEmailFieldRequired] is `true` a missing value will trigger the required field error message.
///
/// If a value is supplied it is validated using [validateEmail].
///
/// Returns `null` (nothing) when the email is valid.
String? checkEmail(String? value, {bool isEmailFieldRequired = true}) {
  /// Return null if the field is not required and the value is empty
  if (!isEmailFieldRequired && isStringNullOrEmpty(value)) return null;

  /// Return required field message if empty/null
  /// Return error message if email is invalid
  return requiredField(value, 'email') ?? validateEmail(value);
}
