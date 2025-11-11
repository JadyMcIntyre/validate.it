import '../services/phone_service.dart';
import '../utils/is_string_null_or_empty.dart';
import 'required_field.dart';

/// Validate a South African phone number.
///
/// When [isPhoneNumberFieldRequired] is `true` a missing value will trigger an error message.
///
/// If a value
/// is supplied it is validated using [validateZAPhone].
///
/// Returns `null` (nothing) when the number is a valid South African phone number.
String? checkPhone(String? v, {bool isPhoneNumberFieldRequired = true}) {
  /// Return null if the field is not required and the value is empty
  if (!isPhoneNumberFieldRequired && isStringNullOrEmpty(v)) return null;

  /// Return required field message if empty/null
  /// Return error message if phone number is invalid
  return requiredField(v, 'phone number') ?? validateZAPhone(v);
}
