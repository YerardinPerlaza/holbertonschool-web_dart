class Password {
  String password = "";

  bool isValid() {
    bool upperLetter = false;

    bool lowerLetter = false;

    bool number = false;
    if (password.length >= 8 && password.length < 16) {
      int i = 0;

      while (i < password.length && !(number && upperLetter && lowerLetter)) {
        if (password.codeUnitAt(i) >= 'A'.codeUnitAt(0) &&
            password.codeUnitAt(i) <= "Z".codeUnitAt(0))
          upperLetter = true;
        else if (password.codeUnitAt(i) >= 'a'.codeUnitAt(0) &&
            password.codeUnitAt(i) <= "z".codeUnitAt(0))
          lowerLetter = true;
        else if (password.codeUnitAt(i) >= '0'.codeUnitAt(0) &&
            password.codeUnitAt(i) <= "9".codeUnitAt(0)) number = true;

        i++;
      }

      if (number && upperLetter && lowerLetter)
        return true;
      else
        return false;
    } else
      return false;
  }

  @override
  String toString() {
    return "Your Password is: $password";
  }
}
