import 'dart:convert';

import 'package:get/get.dart';
import 'package:neumorphicapp/models/movie_model.dart';
import 'package:http/http.dart' as http;

class MyHomePageController extends GetxController {
  var isLoding = true.obs;
  var movielist = <MovieModel>[].obs;
  @override
  void onInit() {
    fetchMovies();
    super.onInit();
  }

  void fetchMovies() async {
    try {
      isLoding(true);
      var response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      );
      if (response.statusCode == 200) {
        var moviedata = json.decode(response.body);
        movielist.value = List<MovieModel>.from(
          moviedata.map(
            (moviemodel) => MovieModel.fromJson(moviemodel),
          ),
        );
      }
    } finally {
      isLoding(false);
    }
  }
}
