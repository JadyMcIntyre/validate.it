import 'package:validateit/src/services/phone_service.dart';
import 'package:validateit/validateit.dart';

/// Checks if a value is a valid RSA phone number
///
/// Used to validate phone forms
String? phone(String? v, {bool r = true}) {
  if (r = false) return null;

  return required(v, 'phone number') ?? validatePhoneBru(v);
}
