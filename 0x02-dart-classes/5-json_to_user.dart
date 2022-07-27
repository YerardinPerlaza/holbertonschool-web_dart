class User {
  int? id;
  String name;
  int age;
  double height;

  User(
      {int? this.id,
      required this.name,
      required this.age,
      required this.height});

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
  String toString() =>
      'User(id : $id ,name: $name,  age: $age, height: $height)';
}
