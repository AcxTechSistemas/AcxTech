// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:acxtech/app/modules/home/controller/home_controller.dart';
import 'package:acxtech/app/modules/home/view/components/desktop_ui_component.dart';
import 'package:acxtech/app/modules/home/view/components/mobile_ui_component.dart';
import 'package:acxtech/app/modules/home/view/components/tablet_ui_component.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:acxtech/app/shared/theme/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final controller = Modular.get<HomeController>();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appTypography = theme.extension<AppTypography>()!;
    final brandColors = theme.extension<BrandColors>()!;
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return MobileUIComponent(
          appTypography: appTypography,
          actionsList: actionsList,
          brandColors: brandColors,
        );
      },
      tablet: (context) {
        return TabletUIComponent(
          appTypography: appTypography,
          actionsList: actionsList,
          brandColors: brandColors,
        );
      },
      desktop: (context) {
        return DesktopUIComponent(
          appTypography: appTypography,
          actionsList: actionsList,
          brandColors: brandColors,
        );
      },
    );
  }

  final actionsList = <Widget>[
    IconButton(
      onPressed: controller.goToGithub,
      icon: const Icon(CommunityMaterialIcons.github),
    ),
    IconButton(
      onPressed: controller.goToWhatsapp,
      icon: const Icon(CommunityMaterialIcons.whatsapp),
    ),
    IconButton(
      onPressed: controller.goToInstagram,
      icon: const Icon(CommunityMaterialIcons.instagram),
    ),
    IconButton(
      onPressed: controller.goToLinkedin,
      icon: const Icon(CommunityMaterialIcons.linkedin),
    ),
  ];
}
