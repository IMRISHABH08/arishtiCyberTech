String? validatePhoneNumber(String? value) {
  if (value == null) return null;
  if (value.isEmpty) {
    return 'PHONE NUMBER CANT EMPTY';
  } else if (value.length > 10) {
    return 'PLEASE ENTER VALID NUMBER';
  } else {
    return null;
  }
}

String? validatePassword(String? value) {
  if (value == null) return null;
  if (value.isEmpty) {
    return 'PASSWORD CANT EMPTY';
  } else if (value.length <= 5) {
    return 'PLEASE KEEP LENGTH MORE THAN 5';
  } else {
    return null;
  }
}

String? validateEmailAddress(String? value) {
  if (value == null) return null;
  if (value.isEmpty) {
    return 'EMAIL_CANT_EMPTY';
  } else if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value)) {
    return 'PLEASE_ENTER_VALID_EMAIL';
  } else {
    return null;
  }
}

String? validateName(String? value) {
  if (value == null) return null;
  if (value.isEmpty) {
    return 'NAME CANT EMPTY';
  } else {
    return null;
  }
}

String? validateAddress(String? value) {
  if (value == null) return null;
  if (value.isEmpty) {
    return 'ADDRESS CANT EMPTY';
  } else {
    return null;
  }
}

String? validateState(String? value) {
  if (value == null) return null;
  if (value.isEmpty) {
    return 'STATE CANT EMPTY';
  } else {
    return null;
  }
}

String? validateCity(String? value) {
  if (value == null) return null;
  if (value.isEmpty) {
    return 'CITY CANT EMPTY';
  } else {
    return null;
  }
}
