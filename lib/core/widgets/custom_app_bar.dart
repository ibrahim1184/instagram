import 'package:flutter/material.dart';
import '/core/utils/colors.dart';
import '/core/utils/padding.dart';
import '/core/utils/text.dart';

class CustomAppBar extends StatelessWidget {
  final Widget? prefix;
  final Widget? suffix;
  final Widget? title;
  final bool? centerTitle;
  final Color? bgColor;
  const CustomAppBar(
      {Key? key,
      this.prefix,
      this.suffix,
      this.title,
      this.bgColor = ColorRes.scaffoldBackground,
      this.centerTitle = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          appBarTheme: AppBarTheme(
              elevation: 0,
              titleTextStyle: CustomText.medium(fontEnum: FontEnum.semiBold))),
      child: AppBar(
        centerTitle: centerTitle,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        backgroundColor: bgColor,
        title: centerTitle == true
            ? title
            : Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: CustomPadding.HP),
                    child: title,
                  ),
                  const Spacer()
                ],
              ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: CustomPadding.HP),
            child: suffix,
          )
        ],
        leadingWidth: CustomPadding.HP + 56,
        leading: prefix != null
            ? Padding(
                padding: const EdgeInsets.only(left: CustomPadding.HP),
                child: prefix,
              )
            : null,
        elevation: null,
      ),
    );
  }

  Padding buildTitleWidget(Widget title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: CustomPadding.smallH),
      child: title,
    );
  }
}
