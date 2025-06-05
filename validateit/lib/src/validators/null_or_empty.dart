/// Checks if a value is null or empty
/// 
/// returns [bool] 
/// 
/// true if the value is null or empty,
/// false otherwise
/// 
/// Used for Early Exit/Guard-clause
bool isNullOrEmpty(dynamic v) => v == null && v.trim().isEmpty;