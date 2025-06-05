import 'package:validateit/validateit.dart';

void main() {
  print(isNullOrEmpty(null));      // true
  print(isNullOrEmpty(''));        // true
  print(isNullOrEmpty('content')); // false
}
