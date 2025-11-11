import 'package:dlibphonenumber/exceptions/number_parse_exception.dart';
import 'package:dlibphonenumber/generated/classes/phone_number/phonenumber.pb.dart';
import 'package:dlibphonenumber/phone_number_util.dart';

/// Validate a South African phone number using `dlibphonenumber`.
///
/// The function accepts numbers in formats such as `+27...`, `27...`, `0...`
/// or `79...` (without a country code). It returns `null` when the number is
/// valid and an error message otherwise.
String? validateZAPhone(String? v) {
  if (v == null) return 'Invalid phone number format. Please check the number.';
  final String trimmedValue = v.trim();
  const String regionCode = 'ZA';

  PhoneNumberUtil phoneUtil = PhoneNumberUtil.instance;

  try {
    /// 1) Attempt to parse the number.
    PhoneNumber phoneNumber = phoneUtil.parse(trimmedValue, regionCode);

    /// 2) Check if the parsed number is valid *for South Africa*.
    bool isValid = phoneUtil.isValidNumberForRegion(phoneNumber, regionCode);

    if (isValid) {
      /// Number is valid for South Africa
      return null;
    } else {
      return 'Please enter a valid South African phone number.';
    }

    /// Catch any exceptions
  } on NumberParseException catch (_) {
    return 'Invalid phone number format. Please check the number.';
  } catch (_) {
    return 'An error occurred validating the phone number.';
  }
}

/// Used to validate a phone number based on a set region
///
/// Pass in a number [String], a region code [String] and optionally a region [String] (which will be used for the error message)
String? validateCustomRegionPhoneNumber(String? v, String rc, String? region) {
  if (v == null) return 'Invalid phone number format. Please check the number.';
  final String trimmedValue = v.trim();
  String regionCode = rc;
  region = '$region ';

  PhoneNumberUtil phoneUtil = PhoneNumberUtil.instance;

  try {
    // Attempt to parse the number.
    PhoneNumber phoneNumber = phoneUtil.parse(trimmedValue, regionCode);

    // Check if the parsed number is valid *for the specified region*.
    bool isValid = phoneUtil.isValidNumberForRegion(phoneNumber, regionCode);

    if (isValid) {
      return null; // Number is valid for region
    } else {
      return 'Please enter a valid ${region}phone number.';
    }
  } on NumberParseException catch (_) {
    return 'Invalid phone number format. Please check the number.';
  } catch (_) {
    return 'An error occurred validating the phone number.';
  }
}
