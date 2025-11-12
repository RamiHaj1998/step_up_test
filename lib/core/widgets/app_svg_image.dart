import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:step_up_test/core/utils/enum/enums.dart';

class AppSvgImage extends StatelessWidget {
  const AppSvgImage({
    super.key,
    required this.path,
    this.height,
    this.width,
    this.color,
    this.matchTextDirection,
    this.fit,
    this.type = SvgPathType.asset,
  });

  final String path;
  final double? height;
  final double? width;
  final Color? color;
  final bool? matchTextDirection;
  final BoxFit? fit;
  final SvgPathType? type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case SvgPathType.network:
        return SvgPicture.network(
          path,
          height: height,
          width: width,
          color: color,
          fit: fit ?? BoxFit.contain,
          matchTextDirection: matchTextDirection ?? false,
        );

      default:
        return SvgPicture.asset(
          path,
          height: height,
          width: width,
          color: color,
          fit: fit ?? BoxFit.contain,
          matchTextDirection: matchTextDirection ?? false,
        );
    }
  }
}
