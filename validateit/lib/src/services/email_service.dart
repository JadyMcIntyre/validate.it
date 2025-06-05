import 'package:email_validator/email_validator.dart';

String? validateEmail(String? v) => !EmailValidator.validate(v!) ? 'Please enter a valid email' : null;
