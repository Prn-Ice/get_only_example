import 'package:get/get.dart';
import 'package:get_only_example/core/enums/viewstate.dart';
import 'package:get_only_example/core/services/authentication_service.dart';
import 'package:get_only_example/core/viewmodels/base_model.dart';

class LoginModel extends BaseModel {
  final AuthenticationService _authenticationService =
      Get.find<AuthenticationService>();

  String errorMessage;

  Future<bool> login(String userIdText) async {
    setViewState(ViewState.Busy);

    var userId = int.tryParse(userIdText);

    // Not a number
    if (userId == null) {
      errorMessage = 'Value entered is not a number';
      setViewState(ViewState.Idle);
      return false;
    }

    var success = await _authenticationService.login(userId);

    // Handle potential error here too.

    setViewState(ViewState.Idle);
    return success;
  }
}
