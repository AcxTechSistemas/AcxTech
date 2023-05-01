part of 'theme.dart';

class AppTypography extends ThemeExtension<AppTypography> {
  final TextStyle? heading1;
  final TextStyle? heading2;
  final TextStyle? heading3;
  final TextStyle? heading4;
  final TextStyle? heading5;
  final TextStyle? heading6;
  final TextStyle? largeTextBold;
  final TextStyle? largeTextRegular;
  final TextStyle? mediumTextBold;
  final TextStyle? mediumTextRegular;
  final TextStyle? normalTextBold;
  final TextStyle? normalTextRegular;
  final TextStyle? smallTextBold;
  final TextStyle? smallTextRegular;

  AppTypography({
    this.heading1,
    this.heading2,
    this.heading3,
    this.heading4,
    this.heading5,
    this.heading6,
    this.largeTextBold,
    this.largeTextRegular,
    this.mediumTextBold,
    this.mediumTextRegular,
    this.normalTextBold,
    this.normalTextRegular,
    this.smallTextBold,
    this.smallTextRegular,
  });

  @override
  AppTypography copyWith({
    TextStyle? heading1,
    TextStyle? heading2,
    TextStyle? heading3,
    TextStyle? heading4,
    TextStyle? heading5,
    TextStyle? heading6,
    TextStyle? largeTextBold,
    TextStyle? largeTextRegular,
    TextStyle? mediumTextBold,
    TextStyle? mediumTextRegular,
    TextStyle? normalTextBold,
    TextStyle? normalTextRegular,
    TextStyle? smallTextBold,
    TextStyle? smallTextRegular,
  }) {
    return AppTypography(
      heading1: heading1 ?? this.heading1,
      heading2: heading2 ?? this.heading2,
      heading3: heading3 ?? this.heading3,
      heading4: heading4 ?? this.heading4,
      heading5: heading5 ?? this.heading5,
      heading6: heading6 ?? this.heading6,
      largeTextBold: largeTextBold ?? this.largeTextBold,
      largeTextRegular: largeTextRegular ?? this.largeTextRegular,
      mediumTextBold: mediumTextBold ?? this.mediumTextBold,
      mediumTextRegular: mediumTextRegular ?? this.mediumTextRegular,
      normalTextBold: normalTextBold ?? this.normalTextBold,
      normalTextRegular: normalTextRegular ?? this.normalTextRegular,
      smallTextBold: smallTextBold ?? this.smallTextBold,
      smallTextRegular: smallTextRegular ?? this.smallTextRegular,
    );
  }

  @override
  ThemeExtension<AppTypography> lerp(
      covariant ThemeExtension<AppTypography>? other, double t) {
    if (other is! AppTypography) {
      return this;
    }
    return AppTypography(
      heading1: TextStyle.lerp(heading1, other.heading1, t),
      heading2: TextStyle.lerp(heading2, other.heading2, t),
      heading3: TextStyle.lerp(heading3, other.heading3, t),
      heading4: TextStyle.lerp(heading4, other.heading4, t),
      heading5: TextStyle.lerp(heading5, other.heading5, t),
      heading6: TextStyle.lerp(heading6, other.heading6, t),
      largeTextBold: TextStyle.lerp(largeTextBold, other.largeTextBold, t),
      largeTextRegular: TextStyle.lerp(
        largeTextRegular,
        other.largeTextRegular,
        t,
      ),
      mediumTextBold: TextStyle.lerp(mediumTextBold, other.mediumTextBold, t),
      mediumTextRegular: TextStyle.lerp(
        mediumTextRegular,
        other.mediumTextRegular,
        t,
      ),
      normalTextBold: TextStyle.lerp(normalTextBold, other.normalTextBold, t),
      normalTextRegular: TextStyle.lerp(
        normalTextRegular,
        other.normalTextRegular,
        t,
      ),
      smallTextBold: TextStyle.lerp(smallTextBold, other.smallTextBold, t),
      smallTextRegular: TextStyle.lerp(
        smallTextRegular,
        other.smallTextRegular,
        t,
      ),
    );
  }
}
