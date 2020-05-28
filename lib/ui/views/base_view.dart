import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_only_example/core/viewmodels/base_model.dart';

class BaseView<T extends BaseModel> extends StatelessWidget {
  const BaseView({
    Key key,
    this.builder,
  }) : super(key: key);

  final Widget Function(T) builder;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<T>(
      builder: builder,
    );
  }
}
