import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    Key? key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.fit = BoxFit.contain,
    this.showBorder = true,
    this.applyImageRadius = true,
    this.radius = TSizes.cardRadiusLg,
    this.backgroundColor = TColors.white,
    this.borderRadius = TSizes.sm,
    this.borderColor = TColors.borderPrimary,
  }) : super(key: key);

  final Widget? child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool showBorder;
  final BoxFit fit;
  final bool applyImageRadius;
  final double radius;
  final Color backgroundColor;
  final Color borderColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: 180,
        margin: margin,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(radius),
          border: !showBorder ? Border.all(color: borderColor) : null,
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: child,
          //  AspectRatio(
          //     aspectRatio: 1, // Maintain aspect ratio of the image
          //     child: child),
        ),
      ),
    );
  }
}
