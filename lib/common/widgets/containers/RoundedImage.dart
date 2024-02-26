import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    Key? key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.fit = BoxFit.contain,
    required this.imageUrl,
    this.showBorder = true,
    this.onPressed,
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
  final String imageUrl;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: borderColor) : null,
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(fit: fit, image: AssetImage(imageUrl)),
          //  AspectRatio(
          //     aspectRatio: 1, // Maintain aspect ratio of the image
          //     child: child),
        ),
      ),
    );
  }
}
