import 'package:acxtech/app/modules/home/view/components/first_impression_tile_component.dart';
import 'package:acxtech/app/modules/home/view/components/home_footer_component.dart';
import 'package:acxtech/app/modules/home/view/components/my_app_component.dart';
import 'package:acxtech/app/modules/home/view/components/presentation_component.dart';
import 'package:acxtech/app/modules/home/view/widgets/custom_home_app_bar.dart';
import 'package:acxtech/app/shared/theme/theme.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TabletUIComponent extends StatelessWidget {
  final AppTypography appTypography;
  final List<Widget> actionsList;
  final BrandColors brandColors;
  const TabletUIComponent({
    super.key,
    required this.appTypography,
    required this.actionsList,
    required this.brandColors,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        ResponsiveAppUtil.setScreenSize(
          constraints,
          Orientation.portrait,
        );
        return Scaffold(
          appBar: CustomHomeAppBarWidget(
            actionsList: actionsList,
            height: 7.screenHeight,
            horizontalPadding: 40,
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: constraints.maxHeight - 7.screenHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top: 197),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FirstImpressionTitleComponent(
                              appTypography: appTypography,
                              width: 55.screenWidth,
                              fontSize: 4.screenWidth,
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/acxLogo.png',
                              width: 38.screenWidth,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nossos Apps',
                              style: appTypography.heading6!.copyWith(
                                color: brandColors.primary!.withOpacity(0.6),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                              height: 10.screenHeight,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  MyAppComponent(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text(
                            'Sobre nós',
                            style: appTypography.heading5,
                          ),
                          const Icon(
                            CommunityMaterialIcons
                                .arrow_down_thin_circle_outline,
                            size: 36,
                          ),
                          const SizedBox(height: 36),
                        ],
                      ),
                    ],
                  ),
                ),
                PresentationComponent(
                  appTypography: appTypography,
                  horizontalPadding: 40,
                ),
                const SizedBox(height: 40),
                HomeFooterComponent(
                  horizontalPadding: 40,
                  brandColors: brandColors,
                  appTypography: appTypography,
                  height: 76,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
