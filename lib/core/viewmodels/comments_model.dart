import 'package:get/get.dart';
import 'package:get_only_example/core/enums/viewstate.dart';
import 'package:get_only_example/core/models/comment.dart';
import 'package:get_only_example/core/models/post.dart';
import 'package:get_only_example/core/services/api.dart';

import 'base_model.dart';

class CommentsModel extends BaseModel {
  List<Comment> comments;

  Api _api = Get.find<Api>();

  @override
  void onInit() {
    fetchComments(post.id);
    super.onInit();
  }

  Post get post => Get.arguments;

  Future fetchComments(int postId) async {
    setViewState(ViewState.Busy);
    comments = await _api.getCommentsForPost(postId);
    setViewState(ViewState.Idle);
  }
}
