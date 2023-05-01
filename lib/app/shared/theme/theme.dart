import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
part 'brand_colors.g.dart';
part 'app_typography.g.dart';

Color get _primaryBrandColor => const Color(0xff00263C);
Color get _secondaryBrandColor => const Color(0xffE4E5DF);

ThemeData get appTheme => ThemeData(
      scaffoldBackgroundColor: _secondaryBrandColor,
      iconTheme: _lightIconThemeData,
      appBarTheme: _lightAppBarTheme,
      primaryColor: _primaryBrandColor,
      extensions: <ThemeExtension<dynamic>>[
        BrandColors(
          primary: _primaryBrandColor,
          secondary: _secondaryBrandColor,
        ),
        AppTypography(
          heading1: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            color: _primaryBrandColor,
            fontSize: 56,
          ),
          heading2: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            color: _primaryBrandColor,
            fontSize: 48,
          ),
          heading3: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            color: _primaryBrandColor,
            fontSize: 40,
          ),
          heading4: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            color: _primaryBrandColor,
            fontSize: 32,
          ),
          heading5: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            color: _primaryBrandColor,
            fontSize: 24,
          ),
          heading6: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            color: _primaryBrandColor,
            fontSize: 22,
          ),
          largeTextBold: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            color: _primaryBrandColor,
            fontSize: 20,
          ),
          largeTextRegular: GoogleFonts.inter(
            fontWeight: FontWeight.normal,
            color: _primaryBrandColor,
            fontSize: 20,
          ),
          mediumTextBold: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            color: _primaryBrandColor,
            fontSize: 18,
          ),
          mediumTextRegular: GoogleFonts.inter(
            fontWeight: FontWeight.normal,
            color: _primaryBrandColor,
            fontSize: 18,
          ),
          normalTextBold: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            color: _primaryBrandColor,
            fontSize: 16,
          ),
          normalTextRegular: GoogleFonts.inter(
            fontWeight: FontWeight.normal,
            color: _primaryBrandColor,
            fontSize: 16,
          ),
          smallTextBold: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            color: _primaryBrandColor,
            fontSize: 14,
          ),
          smallTextRegular: GoogleFonts.inter(
            fontWeight: FontWeight.normal,
            color: _primaryBrandColor,
            fontSize: 14,
          ),
        ),
      ],
    );

IconThemeData get _lightIconThemeData => IconThemeData(
      color: _primaryBrandColor,
    );

AppBarTheme get _lightAppBarTheme => AppBarTheme(
      backgroundColor: _primaryBrandColor,
      actionsIconTheme: IconThemeData(
        color: _secondaryBrandColor,
      ),
    );
