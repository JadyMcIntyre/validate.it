import 'package:validateit/validateit.dart';

void main() {
  final phoneValue = '0821234567';
  final error = checkPhone(phoneValue);

  if (error == null) {
    print('Valid phone number');
  } else {
    print(error);
  }
}
