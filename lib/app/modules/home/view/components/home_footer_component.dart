import 'package:acxtech/app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeFooterComponent extends StatelessWidget {
  final double height;
  final double horizontalPadding;
  final WrapAlignment alignment;
  const HomeFooterComponent({
    super.key,
    required this.brandColors,
    required this.appTypography,
    required this.height,
    required this.horizontalPadding,
    this.alignment = WrapAlignment.spaceBetween,
  });

  final BrandColors brandColors;
  final AppTypography appTypography;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      color: brandColors.primary,
      height: height,
      width: double.infinity,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        alignment: alignment,
        children: [
          Text(
            'Copyright © 2023 AcxTech Sistemas',
            style: appTypography.smallTextBold!.copyWith(
              color: brandColors.secondary,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Powered with Flutter',
            style: appTypography.smallTextBold!.copyWith(
              color: brandColors.secondary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
