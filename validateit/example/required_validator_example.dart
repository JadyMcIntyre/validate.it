import 'package:validateit/validateit.dart';

void main() {
  final value = '';
  final error = required(value, 'name');

  if (error == null) {
    print('Value provided');
  } else {
    print(error);
  }
}
