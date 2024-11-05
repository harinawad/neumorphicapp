import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:neumorphicapp/models/posts_model.dart';

class MyPostsController extends GetxController {
  var postsList = <PostsModel>[].obs;
  var isLoding = false.obs;
  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  void fetchPosts() async {
    try {
      isLoding(true);
      var response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );
      if (response.statusCode == 200) {
        var postsData = json.decode(response.body);
        postsList.value = List<PostsModel>.from(
          postsData.map(
            (postsmodel) => PostsModel.fromJson(postsmodel),
          ),
        );
      }
    } finally {
      isLoding(false);
    }
  }
}
