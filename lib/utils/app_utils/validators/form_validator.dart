extension FormValidator on String {
  bool isMobileValid() {
    return length == 10 && RegExp(r"^[6-9]\d{9}$").hasMatch(this);
  }

  bool isValidEmail() {
    if (length == 0) {
      return true;
    } else {
      return RegExp(
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
          .hasMatch(this);
    }
  }

  bool isMpinValid() {
    return length == 4;
  }

  bool isDistributorCodeValid() {
    return length >= 1;
  }

  bool isNameValid() {
    return length >= 2;
  }

  bool isIfscValid() {
    return length == 11;
  }

  bool isOtpValid() {
    return length == 6;
  }

  bool isCodeValid() {
    return length == 12 ||
        length == 16 ||
        length == 18 && RegExp(r'^[a-zA-Z0-9_]*$').hasMatch(this);
  }

  bool isFeedbackValid() {
    return length >= 2;
  }
}
