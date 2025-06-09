import 'package:validateit/validateit.dart';

void main() {
  final value = '';
  final error = requiredField(value, 'name');

  if (error == null) {
    print('Value provided');
  } else {
    print(error);
  }
}
