import '6-password.dart';

class User extends Password {
  int? id;
  String name;
  int age;
  double height;
  String? user_password;

  User(
      {int? this.id,
      required this.name,
      required this.age,
      required this.height,
      String? this.user_password});

  Map toJson() {
    return {"id": id, "name": name, "age": age, "height": height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    final userId = userJson['id'] as int;
    final userName = userJson['name'] as String;
    final userAge = userJson['age'] as int;
    final userHeight = userJson['height'] as double;
    return User(id: userId, name: userName, age: userAge, height: userHeight);
  }

  @override
  String toString() {
    final pass = Password(password: user_password);
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${pass.isValid()})';
  }
}
