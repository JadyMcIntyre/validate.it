import 'package:dlibphonenumber/exceptions/number_parse_exception.dart';
import 'package:dlibphonenumber/generated/classes/phone_number/phonenumber.pb.dart';
import 'package:dlibphonenumber/phone_number_util.dart';

/// Validate a South African phone number using `dlibphonenumber`.
///
/// The function accepts numbers in formats such as `+27...`, `27...`, `0...`
/// or `79...` (without a country code). It returns `null` when the number is
/// valid and an error message otherwise.
String? validatePhoneBru(String? v) {
  if (v == null) return 'Invalid phone number format. Please check the number.';
  final String trimmedValue = v.trim();
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
  } on NumberParseException catch (_) {
    return 'Invalid phone number format. Please check the number.';
  } catch (_) {
    return 'An error occurred validating the phone number.';
  }
}
