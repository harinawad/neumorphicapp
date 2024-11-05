import 'package:http/http.dart' as http;

class TheMovieApi {
  static Future getTheMovie() async {
    var myapi = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/photos"),
    );
    return myapi;
  }
}
