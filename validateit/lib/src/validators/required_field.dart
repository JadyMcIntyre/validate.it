import '../utils/is_string_null_or_empty.dart';

/// Ensures that a value is present in a field.
///
/// Returns an error message if [value] is `null` or empty.
///
/// Otherwise returns `null` (nothing).
///
/// The [key] parameter is used in the returned error message to identify
/// the field name.
String? requiredField(String? value, String key) => isStringNullOrEmpty(value) ? 'The $key field is required' : null;
