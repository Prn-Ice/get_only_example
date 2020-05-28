import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_only_example/ui/views/home_view.dart';
import 'package:get_only_example/ui/views/login_view.dart';
import 'package:get_only_example/ui/views/post_view.dart';

class Router {
  static const String homeViewRoute = '/home';
  static const String loginViewRoute = '/';
  static const String postViewRoute = '/post';

  static Map<String, GetRoute> namedRoutes = <String, GetRoute>{
    homeViewRoute: GetRoute(page: HomeView()),
    loginViewRoute: GetRoute(page: LoginView()),
    postViewRoute: GetRoute(page: PostView()),
  };

  static const GetRoute errorRoute = GetRoute(
    page: Scaffold(
      body: Center(
        child: Text('No route defined for selected route'),
      ),
    ),
  );
}
