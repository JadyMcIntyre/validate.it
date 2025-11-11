/// Determine whether [v] is `null` or an empty string.
///
/// Useful for guard clauses in validators.
bool isNullOrEmpty(String? v) => v == null || v.trim().isEmpty;
