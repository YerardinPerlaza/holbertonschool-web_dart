import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import "dart:io";

Future<String> generateQuote(id) async {
  try {
    final response = await http.get(
      Uri.parse('https://breakingbadapi.com/api/quotes'),
    );
    var resJson = jsonDecode(response.body);
    return ("${resJson[id - 1]["author"]} : ${resJson[id - 1]["quote"]}");
  } catch (e) {
    return "There are no quotes";
  }
}
