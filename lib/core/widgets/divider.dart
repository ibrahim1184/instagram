import 'package:flutter/material.dart';

import '/core/utils/colors.dart';
import '/core/utils/padding.dart';

class CustomDivider extends StatelessWidget {
  final double horizontalPadding;
  final double? verticalPadding;
  final double? height;
  final Color? color;
  const CustomDivider({
    Key? key,
    this.horizontalPadding = 0.0,
    this.verticalPadding,
    this.height = 0.5,
    this.color = ColorRes.slate200,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding ?? CustomPadding.smallV),
      child: Divider(
        height: height,
        color: color,
      ),
    );
  }
}
