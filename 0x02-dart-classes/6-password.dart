class Password {
  String? _password = "";

  String get password => _password!;

  set password(String password) => _password = password;
  Password({password}) : _password = password;

  bool isValid() {
    bool upperLetter = false;

    bool lowerLetter = false;

    bool number = false;
    if ((_password?.length ?? 0) >= 8 && (_password?.length ?? 0) < 16) {
      int i = 0;

      while (i < (_password?.length ?? 0) &&
          !(number && upperLetter && lowerLetter)) {
        if (_password!.codeUnitAt(i) >= 'A'.codeUnitAt(0) &&
            _password!.codeUnitAt(i) <= "Z".codeUnitAt(0))
          upperLetter = true;
        else if (_password!.codeUnitAt(i) >= 'a'.codeUnitAt(0) &&
            _password!.codeUnitAt(i) <= "z".codeUnitAt(0))
          lowerLetter = true;
        else if (_password!.codeUnitAt(i) >= '0'.codeUnitAt(0) &&
            _password!.codeUnitAt(i) <= "9".codeUnitAt(0)) number = true;

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
    return "Your Password is: $_password";
  }
}
