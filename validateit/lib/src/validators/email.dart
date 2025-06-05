import 'package:validateit/src/services/email_service.dart';
import 'package:validateit/validateit.dart';

/// Checks if a value is a valid email address
/// 
/// Used to validate email forms
String? email(String? v, {bool r = true}) {
  if (r = false) return null;

  return required(v, 'email') ?? validateEmail(v);
}
