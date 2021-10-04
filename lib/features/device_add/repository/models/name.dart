import 'package:formz/formz.dart';

enum NameValidationError { toLong }

class Name extends FormzInput<String, NameValidationError> {
  const Name.pure([String value = '']) : super.pure(value);
  const Name.dirty([String value = '']) : super.dirty(value);

  @override
  NameValidationError? validator(String? value) {
    final name = value ?? '';

    if (name.length > 40) {
      return NameValidationError.toLong;
    } else {
      return null;
    }
  }
}
