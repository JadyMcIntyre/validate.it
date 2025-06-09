import '../services/phone_service.dart';
import 'null_or_empty.dart';
import 'required.dart';

/// Validate a South African phone number.
///
/// When [r] is `true` a missing value will trigger an error message. If a value
/// is supplied it is validated using [validateZAPhone].
///
/// Returns `null` when the number is valid for South Africa.
String? checkPhone(String? v, {bool r = true}) {
  if (!r && isNullOrEmpty(v)) return null;
  return requiredField(v, 'phone number') ?? validateZAPhone(v);
}
