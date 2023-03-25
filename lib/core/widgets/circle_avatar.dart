// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  double? size;
  Widget? child;
  Color? color;
  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry? margin;
  BoxBorder? border;
  bool isClip;
  CustomCircleAvatar(
      {Key? key,
      this.size,
      required this.child,
      this.color = Colors.transparent,
      this.padding,
      this.margin,
      this.border,
      this.isClip = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.all(0),
      child: isClip
          ? ClipOval(
              child: buildContainer(),
            )
          : buildContainer(),
    );
  }

  Container buildContainer() {
    return Container(
      padding: padding,
      height: size,
      width: size,
      decoration:
          BoxDecoration(color: color, border: border, shape: BoxShape.circle),
      child: child,
    );
  }
}
