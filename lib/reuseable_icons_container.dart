import 'package:flutter/material.dart';

class ReuseableIconContainer extends StatelessWidget {
  ReuseableIconContainer(
      {@required this.icon,
        this.height,
        this.width,
        this.color,
        this.circularRadius,
        this.iconSize,
        this.iconColor
      });

  final IconData icon;
  final double height;
  final double width;
  final Color color;
  final Color iconColor;
  final double iconSize;
  final double circularRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon, color: iconColor ,
        size: iconSize,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(circularRadius), color: color),
      height: height,
      width: width,
    );
  }
}
