import 'package:validateit/src/validators/null_or_empty.dart';

/// Checks if a field is null or empty
/// 
/// returns [String]
/// 
/// returns error message if the field is null or empty
/// otherwise returns null
/// 
/// Used to display field validation messages
String? required(String? v, String? k) => isNullOrEmpty(v) ? 'The $k field is required' : null;
