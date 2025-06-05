import 'package:validateit/src/services/email_service.dart';
import 'package:validateit/validateit.dart';

String? email(String? v, {bool r = true}) {
  if (r = false) return null;

  return required(v, 'email') ?? validateEmail(v);
}
