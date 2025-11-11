/// Determine whether a `String` [value] is `null` or *empty*.
///
/// Useful for guard clauses in the validators.
bool isStringNullOrEmpty(String? value) => value == null || value.trim().isEmpty;
