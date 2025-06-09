import 'package:validateit/validateit.dart';

void main() {
  final emailValue = 'user@example.com';
  final error = checkEmail(emailValue);

  if (error == null) {
    print('Valid email');
  } else {
    print(error);
  }
}
