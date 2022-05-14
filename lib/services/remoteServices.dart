import 'package:http/http.dart' as http;

import '../models/comments.dart';

class RemoteServices {
  Future<List<Comment>?> getComments() async {
    var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/comments');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return commentFromJson(json);
    }
  }
}
