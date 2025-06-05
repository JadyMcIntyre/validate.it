import 'package:dlibphonenumber/exceptions/number_parse_exception.dart';
import 'package:dlibphonenumber/generated/classes/phone_number/phonenumber.pb.dart';
import 'package:dlibphonenumber/phone_number_util.dart';

/// Validates a phone number using dlibphonenumber, expecting a South African number.
///
/// Handles formats like: +27..., 27..., 0... and 79... (without country code).
String? validatePhoneBru(String? v) {
  final String trimmedValue = v!.trim();
  const String regionCode = 'ZA';

  PhoneNumberUtil phoneUtil = PhoneNumberUtil.instance;

  try {
    // Attempt to parse the number.
    PhoneNumber phoneNumber = phoneUtil.parse(trimmedValue, regionCode);

    // Check if the parsed number is valid *for the specified region*.
    bool isValid = phoneUtil.isValidNumberForRegion(phoneNumber, regionCode);

    if (isValid) {
      return null; // Number is valid for South Africa
    } else {
      return 'Please enter a valid South African phone number.';
    }
  } on NumberParseException catch (e) {
    return 'Invalid phone number format. Please check the number.';
  } catch (e) {
    return 'An error occurred validating the phone number.';
  }
}
