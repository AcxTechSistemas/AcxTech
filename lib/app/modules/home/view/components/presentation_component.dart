import 'package:acxtech/app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class PresentationComponent extends StatelessWidget {
  final double horizontalPadding;
  const PresentationComponent({
    super.key,
    required this.appTypography,
    required this.horizontalPadding,
  });

  final AppTypography appTypography;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        children: [
          Text(
            '</ Apresentação />\n',
            style: appTypography.heading4,
          ),
          Text(
            'Desenvolvimento de aplicativos personalizados com o poder do Flutter!\n',
            style: appTypography.heading5,
          ),
          Text(
            'Quando se trata de desenvolvimento de aplicativos, a AcxTech é a escolha certa para quem busca eficiência e soluções personalizadas.\n\nNossa equipe é composta por desenvolvedores e designers UI/UX experientes que trabalham em estreita colaboração com cada cliente para transformar suas ideias em softwares de alta qualidade.\n\nCom nossa expertise em Flutter, oferecemos soluções personalizadas que se adequam a vários dispositivos, garantindo que nossos aplicativos atendam aos mais altos padrões de qualidade e funcionalidade.\nSe você está procurando um parceiro de desenvolvimento de confiança para ajudá-lo a alcançar seus objetivos, a AcxTech é a escolha certa para você.',
            style: appTypography.mediumTextRegular,
          ),
        ],
      ),
    );
  }
}
