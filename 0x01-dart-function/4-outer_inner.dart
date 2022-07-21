void outer(String name, String id) {
  String inner() {
    var t = name.split(" ");
    var the_name = t[1].substring(0, 1) + "." + t[0];
    return "Hello Agent ${the_name} your id is $id";
  }

  print(inner());
}
