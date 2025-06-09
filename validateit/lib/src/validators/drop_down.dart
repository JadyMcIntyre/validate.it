import 'package:validateit/validateit.dart';

/// Validates that a dropdown field has a value that is not equal to it's default value `dv`
///
/// requires a value, a default value `dv`, and an optional field name `fn`
/// 
/// if a field name is not provided, the validation message defaults to 'Please select an option'
String? dropDown(String? v, String dv, String? fn) =>
    isNullOrEmpty(v) || v == dv
        ? fn != null
            ? 'Please select a $fn'
            : 'Please select an option'
        : null;
