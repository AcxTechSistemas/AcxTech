import 'package:acxtech/app/shared/theme/theme.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class FirstImpressionTitleComponent extends StatelessWidget {
  final double width;
  final double fontSize;
  const FirstImpressionTitleComponent({
    super.key,
    required this.appTypography,
    required this.width,
    required this.fontSize,
  });

  final AppTypography appTypography;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(CommunityMaterialIcons.android),
              Icon(CommunityMaterialIcons.apple_ios),
              Icon(CommunityMaterialIcons.web),
              Icon(
                CommunityMaterialIcons.microsoft_windows,
              ),
            ],
          ),
          Text(
            '</ Codificando soluções para todas as suas necessidades digitais />',
            style: appTypography.heading3!.copyWith(
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}
