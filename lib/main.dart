import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_only_example/ui/router.dart';

void main() {
  // setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      namedRoutes: Router.namedRoutes,
      unknownRoute: Router.errorRoute,
    );
  }
}
