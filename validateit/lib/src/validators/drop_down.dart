import 'package:validateit/validateit.dart';

/// Validates that a dropdown field has a value that is not equal to it's `defaultValue`
///
/// requires a `value`, a default value `defaultValue`,
/// optionally a field name `fieldName`
///
/// if a field name is not provided, the validation message defaults to 'Please select an option'
String? dropDown(String? value, String defaultValue, String? fieldName) =>
    isStringNullOrEmpty(value) || value == defaultValue
        ? fieldName != null
            ? 'Please select a $fieldName'
            : 'Please select an option'
        : null;
