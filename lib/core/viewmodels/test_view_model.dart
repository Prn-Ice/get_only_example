import 'package:get_only_example/core/viewmodels/base_view_model.dart';

class TestViewModel extends FutureViewModel {
  @override
  Future futureToRun() {
    return _fakeFetch();
  }

  Future<String> _fakeFetch() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Done';
  }
}
