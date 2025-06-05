import 'package:validateit/validateit.dart';

void main() {
  final phoneValue = '0821234567';
  final error = phone(phoneValue);

  if (error == null) {
    print('Valid phone number');
  } else {
    print(error);
  }
}
