import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReuseableSVGIcon extends StatelessWidget {
  ReuseableSVGIcon(
      {this.height,
        this.width,
        this.activeColor,
        this.circularRadius,
        this.iconColor,
        this.padding,
        this.iconsName});

  final double height;
  final double width;
  final Color activeColor;
  final double circularRadius;
  final double padding;
  final String iconsName;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: activeColor,
        borderRadius: BorderRadius.circular(circularRadius),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Container(
          child: SvgPicture.asset(
            iconsName,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
