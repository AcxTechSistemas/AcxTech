import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomHomeAppBarWidget extends AppBar {
  final double height;
  final List<Widget> actionsList;
  final double horizontalPadding;
  CustomHomeAppBarWidget({
    required this.height,
    required this.actionsList,
    required this.horizontalPadding,
    super.key,
  }) : super(
          toolbarHeight: height,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Row(
              children: [
                SvgPicture.asset('assets/acxTechLogo.svg'),
                const Spacer(),
                actionsList[0], // Github
                actionsList[1], // Whatsapp
                actionsList[2], // Instagram
                actionsList[3], // Linkedin
              ],
            ),
          ),
        );
}
