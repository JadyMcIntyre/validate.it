import '../utils/null_or_empty.dart';

/// Ensure that a value is present.
///
/// Returns an error message if [v] is `null` or empty. Otherwise returns
/// `null`. The [k] parameter is used in the returned error message to identify
/// the field name.
String? requiredField(String? v, String k) =>
    isNullOrEmpty(v) ? 'The $k field is required' : null;
