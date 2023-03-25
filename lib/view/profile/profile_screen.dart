import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:initial/core/utils/assets.dart';
import 'package:initial/core/utils/colors.dart';
import 'package:initial/core/utils/text.dart';
import 'package:initial/view/profile/widget/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ProfileBody(),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: ColorRes.white,
      title: Row(
        children: [
          SvgPicture.asset(
            IconRes.lock,
            height: 30,
            width: 30,
          ),
          Text(
            "ibrahim_ugurr",
            style: CustomText.large(
                color: ColorRes.black, fontEnum: FontEnum.semiBold),
          ),
        ],
      ),
      actions: [
        buildAppBarActions(
            svg: IconRes.more, padding: const EdgeInsets.all(16)),
        buildAppBarActions(
          svg: IconRes.menu,
          padding: const EdgeInsets.only(right: 25),
        ),
      ],
    );
  }

  Padding buildAppBarActions({
    required String svg,
    required EdgeInsetsGeometry padding,
  }) {
    return Padding(
      padding: padding,
      child: SvgPicture.asset(
        svg,
        height: 30,
        width: 30,
      ),
    );
  }
}

 