import 'package:get/get.dart';
import 'package:get_only_example/core/models/post.dart';
import 'package:get_only_example/core/models/user.dart';
import 'package:get_only_example/core/services/authentication_service.dart';
import 'package:get_only_example/core/viewmodels/base_model.dart';

class PostModel extends BaseModel {
  Post get post => Get.arguments;
  User get user => Get.find<AuthenticationService>().userController.value;
}
