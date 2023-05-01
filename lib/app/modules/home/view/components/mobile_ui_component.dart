import 'package:acxtech/app/modules/home/view/components/first_impression_tile_component.dart';
import 'package:acxtech/app/modules/home/view/components/home_footer_component.dart';
import 'package:acxtech/app/modules/home/view/components/my_app_component.dart';
import 'package:acxtech/app/modules/home/view/widgets/custom_home_app_bar.dart';
import 'package:acxtech/app/shared/theme/theme.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileUIComponent extends StatelessWidget {
  final AppTypography appTypography;
  final List<Widget> actionsList;
  final BrandColors brandColors;
  const MobileUIComponent({
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
            horizontalPadding: 16,
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    height: constraints.maxHeight - 7.screenHeight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          'assets/acxLogo.png',
                          height: 35.screenHeight,
                        ),
                        FirstImpressionTitleComponent(
                          appTypography: appTypography,
                          width: 55.screenWidth,
                          fontSize: 5.screenWidth,
                        ),
                        const Spacer(),
                        Column(
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
                        const Spacer(),
                        Column(
                          children: [
                            Text(
                              'Sobre nós\n',
                              style: appTypography.normalTextRegular,
                            ),
                            const Icon(
                              CommunityMaterialIcons
                                  .arrow_down_thin_circle_outline,
                              size: 24,
                            ),
                            const SizedBox(height: 36),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Text(
                        '</ Apresentação />\n',
                        style: appTypography.heading5,
                      ),
                      Text(
                        'Desenvolvimento de aplicativos personalizados com o poder do Flutter!\n',
                        style: appTypography.heading6,
                      ),
                      Text(
                        'Quando se trata de desenvolvimento de aplicativos, a AcxTech é a escolha certa para quem busca eficiência e soluções personalizadas.\n\nNossa equipe é composta por desenvolvedores e designers UI/UX experientes que trabalham em estreita colaboração com cada cliente para transformar suas ideias em softwares de alta qualidade.\n\nCom nossa expertise em Flutter, oferecemos soluções personalizadas que se adequam a vários dispositivos, garantindo que nossos aplicativos atendam aos mais altos padrões de qualidade e funcionalidade.\nSe você está procurando um parceiro de desenvolvimento de confiança para ajudá-lo a alcançar seus objetivos, a AcxTech é a escolha certa para você.',
                        style: appTypography.mediumTextRegular,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                HomeFooterComponent(
                  horizontalPadding: 16,
                  alignment: WrapAlignment.center,
                  height: 97,
                  brandColors: brandColors,
                  appTypography: appTypography,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
