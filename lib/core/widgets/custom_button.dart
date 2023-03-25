import 'package:flutter/material.dart';

import '/core/utils/colors.dart';
import '/core/utils/padding.dart';
import '/core/utils/text.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String? text;
  bool? isExpanded;
  Function()? onTap;
  late double verticalPadding;
  late double horizontalPadding;
  late double horizontalMargin;
  late double verticalMargin;
  TextStyle? textStyle;
  Color textColor;
  Color color;
  Color? focusColor;
  double elevation;
  Widget? prefixIcon;
  Widget? suffixIcon;
  MainAxisAlignment mainAxisAlignment;
  double borderRadius;
  CustomButton({
    Key? key,
    this.text,
    this.isExpanded = false,
    this.onTap,
    this.verticalPadding = 0,
    this.horizontalPadding = 0,
    this.horizontalMargin = 15,
    this.verticalMargin = 7,
    this.textStyle,
    this.focusColor,
    this.textColor = ColorRes.white,
    this.color = ColorRes.red500,
    this.elevation = 0,
    this.prefixIcon,
    this.suffixIcon,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.borderRadius = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: verticalPadding, horizontal: horizontalPadding),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          isExpanded == true
              ? Expanded(
                  child: buildButton(),
                )
              : buildButton(),
        ],
      ),
    );
  }

  Widget buildButton() {
    return Material(
      elevation: color == Colors.transparent ? 0 : elevation,
      borderRadius: BorderRadius.circular(borderRadius),
      shadowColor: color,
      color: color,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius),
        focusColor: color,
        hoverColor: color,
        splashColor: color,
        highlightColor: focusColor,
        child: Ink(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(borderRadius)),
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: verticalMargin, horizontal: horizontalMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                prefixIcon != null
                    ? Container(
                        padding: EdgeInsets.only(right: CustomPadding.smallH),
                        child: prefixIcon,
                      )
                    : Container(),
                text != null
                    ? Text(
                        text!,
                        style: textStyle ??
                            CustomText.medium(
                                fontEnum: FontEnum.semiBold, color: textColor),
                      )
                    : Container(),
                suffixIcon != null
                    ? Container(
                        padding: EdgeInsets.only(left: CustomPadding.smallH),
                        child: suffixIcon,
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
