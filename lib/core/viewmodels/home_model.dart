import 'package:get/get.dart';
import 'package:get_only_example/core/models/post.dart';
import 'package:get_only_example/core/models/user.dart';
import 'package:get_only_example/core/services/authentication_service.dart';
import 'package:get_only_example/core/services/posts_service.dart';
import 'package:get_only_example/core/viewmodels/base_view_model.dart';

class HomeModel extends BaseViewModel {
  PostsService _postsService = Get.find<PostsService>();

  @override
  void onInit() {
    getPosts(user.id);
    super.onInit();
  }

  List<Post> get posts => _postsService.posts;

  User get user => Get.find<AuthenticationService>().userController.value;

  Future getPosts(int userId) async {
    await runBusyFuture(_postsService.getPostsForUser(userId));
  }
}
