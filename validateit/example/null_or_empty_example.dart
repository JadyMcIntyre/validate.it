import 'package:validateit/validateit.dart';

void main() {
  print(isStringNullOrEmpty(null));      // true
  print(isStringNullOrEmpty(''));        // true
  print(isStringNullOrEmpty('content')); // false
}
