import 'package:email_validator/email_validator.dart';

/// Utilizes the email_validator package to validate email addresses
/// 
/// if invalid it returns an error message
String? validateEmail(String? v) => !EmailValidator.validate(v!) ? 'Please enter a valid email' : null;
