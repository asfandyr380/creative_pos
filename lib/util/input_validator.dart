class Validator {
  static emptyValidation(String? data) {
    if (data == null || data.isEmpty) {
      return 'please enter something';
    }
  }
}
