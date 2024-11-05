import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neumorphicapp/view/widgets/products_list.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  // final MyHomePageController _homePageController = Get.put(
  //   MyHomePageController(),
  // );
  // final MyProductsController _myProductsController = Get.put(
  //   MyProductsController(),
  // );
  // final MyPostsController _postsController = Get.put(MyPostsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.lightGreen,
          unselectedItemColor: Colors.grey,
          elevation: 0,
          backgroundColor: Colors.grey[100],
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: "search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.card_travel_sharp,
                size: 30,
              ),
              label: "cart",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.face_2,
                  size: 30,
                ),
                label: "profile"),
          ],
        ),

        body: ProductsList(),

        // body: Obx(() {
        //   if (_postsController.isLoding.value) {
        //     return const Center(
        //       child: CircularProgressIndicator(),
        //     );
        //   } else {
        //     return ListView.builder(
        //         itemCount: _postsController.postsList.length,
        //         itemBuilder: (context, index) {
        //           return Card(
        //               child: ListTile(
        //             title: Text(_postsController.postsList[index].title),
        //             subtitle: Text(_postsController.postsList[index].body),
        //           ));
        //         });
        //   }
        // }),
      ),
    );
  }
}
