import 'package:get/get.dart';
import 'package:initial/core/data/posts.dart';
import 'package:initial/core/models/post_model.dart';

class HomeController extends GetxController {
  RxBool isLiked = false.obs;
  RxList<PostModel> posts = <PostModel>[].obs;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit(); 
    posts.value = testPosts.map((map) => PostModel.fromMap(map)).toList();
  }
}
