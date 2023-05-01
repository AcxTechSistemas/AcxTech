part of 'theme.dart';

class BrandColors extends ThemeExtension<BrandColors> {
  final Color? primary;
  final Color? secondary;
  BrandColors({
    this.primary,
    this.secondary,
  });
  @override
  ThemeExtension<BrandColors> copyWith({
    Color? primary,
    Color? secondary,
  }) {
    return BrandColors(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
    );
  }

  @override
  ThemeExtension<BrandColors> lerp(
      covariant ThemeExtension<BrandColors>? other, double t) {
    if (other is! BrandColors) {
      return this;
    }
    return BrandColors(
      primary: Color.lerp(primary, other.primary, t),
      secondary: Color.lerp(secondary, other.secondary, t),
    );
  }
}
