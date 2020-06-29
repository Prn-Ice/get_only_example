import 'package:get/get.dart';
import 'package:get_only_example/core/bindings/home_bindings.dart';
import 'package:get_only_example/core/bindings/login_bindings.dart';
import 'package:get_only_example/core/bindings/post_bindings.dart';
import 'package:get_only_example/ui/views/home_view.dart';
import 'package:get_only_example/ui/views/login_view.dart';
import 'package:get_only_example/ui/views/post_view.dart';

class Router {
  static const String homeViewRoute = '/home';
  static const String loginViewRoute = '/';
  static const String postViewRoute = '/post';

  static List<GetPage> namedRoutes = <GetPage>[
    GetPage(
        name: homeViewRoute, page: () => HomeView(), binding: HomeBindings()),
    GetPage(
        name: loginViewRoute,
        page: () => LoginView(),
        binding: LoginBindings()),
    GetPage(
        name: postViewRoute, page: () => PostView(), binding: PostBindings()),
  ];

  /*static Route<dynamic> onUnknownRoute(RouteSettings settings){
    return GetRouteBase(page: null)
  }

  static const GetRoute errorRoute = GetRoute(
    page: Scaffold(
      body: Center(
        child: Text('No route defined for selected route'),
      ),
    ),
  );*/
}
