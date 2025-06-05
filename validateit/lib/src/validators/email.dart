import '../services/email_service.dart';
import 'null_or_empty.dart';
import 'required.dart';

/// Validate an email address.
///
/// When [r] is `true` the value is required and the function will return an
/// error message if [v] is `null` or empty. If the value is present it is
/// checked using [validateEmail].
///
/// Returns `null` when the email is valid.
String? email(String? v, {bool r = true}) {
  if (!r && isNullOrEmpty(v)) return null;
  return required(v, 'email') ?? validateEmail(v);
}
