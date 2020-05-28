import 'package:get/get.dart';
import 'package:get_only_example/core/enums/viewstate.dart';

class BaseModel extends GetController {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setViewState(ViewState viewState) {
    _state = viewState;
    update(this);
  }
}
