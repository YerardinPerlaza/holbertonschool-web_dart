import "package:http/http.dart" as http;
import 'dart:async';
import 'dart:convert';
import "dart:io";

Future<void> printBbCharacters() async {
  try {
    final response = await http.get(
      Uri.parse('https://www.breakingbadapi.com/api/characters'),
    );
    var resJson = jsonDecode(response.body);
    for (var i = 0; i < resJson.length; i++) {
      stdout.write("${resJson[i]["name"]}\n");
    }
  } catch (e) {
    stdout.write(e);
  }
}
