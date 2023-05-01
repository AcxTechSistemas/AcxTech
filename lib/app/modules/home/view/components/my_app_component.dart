import 'package:acxtech/app/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyAppComponent extends StatefulWidget {
  const MyAppComponent({
    super.key,
  });

  @override
  State<MyAppComponent> createState() => _MyAppComponentState();
}

class _MyAppComponentState extends State<MyAppComponent> {
  final controller = Modular.get<HomeController>();
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: controller.goToVerifyInGooglePlay,
      child: Image.asset(
        'assets/verifyApp.png',
      ),
    );
  }
}
