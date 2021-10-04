import 'package:formz/formz.dart';

enum IpValidationError { invalid, empty }

class Ip extends FormzInput<String, IpValidationError> {
  const Ip.pure([String value = '']) : super.pure(value);
  const Ip.dirty([String value = '']) : super.dirty(value);

  static final _ipRegex = RegExp(r'^(?=\d+\.\d+\.\d+\.\d+$)(?:(?:25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9][0-9]|[0-9])\.?){4}$');

  @override
  IpValidationError? validator(String? value) {
    final ip = value ?? '';

    if (ip.isEmpty) return IpValidationError.empty;
    if (!_ipRegex.hasMatch(ip)) return IpValidationError.invalid;

    return null;
  }
}
