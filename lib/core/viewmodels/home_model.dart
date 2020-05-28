import 'package:get/get.dart';
import 'package:get_only_example/core/enums/viewstate.dart';
import 'package:get_only_example/core/models/post.dart';
import 'package:get_only_example/core/models/user.dart';
import 'package:get_only_example/core/services/authentication_service.dart';
import 'package:get_only_example/core/services/posts_service.dart';

import 'base_model.dart';

class HomeModel extends BaseModel {
  PostsService _postsService = Get.find<PostsService>();

  @override
  void onInit() {
    getPosts(user.id);
    super.onInit();
  }

  List<Post> get posts => _postsService.posts;

  User get user => Get.find<AuthenticationService>().userController.value;

  Future getPosts(int userId) async {
    setViewState(ViewState.Busy);
    await _postsService.getPostsForUser(userId);
    setViewState(ViewState.Idle);
  }
}
