import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:initial/core/utils/assets.dart';
import 'package:initial/core/utils/colors.dart';
import 'package:initial/core/utils/text.dart';
import 'package:sizer/sizer.dart';

import 'package:initial/core/widgets/circle_avatar.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildHeader(),
        buildContent(),
        buildButtons(),
      ],
    );
  }

  Widget buildButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            profileEditButton(
                child: Text(
              "Profili Düzenle",
              style: CustomText.xSmall(color: Colors.black),
            )),
            profileEditButton(
                child: Text(
              "Profili Paylaş",
              style: CustomText.xSmall(color: Colors.black),
            )),
            profileEditButton(
                child: Icon(Icons.person_add_outlined, size: 20), flex: 0),
          ],
        ),
      ),
    );
  }

  Padding buildContent() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("İbrahim Uğur",
              style: CustomText.small(
                  color: ColorRes.black, fontEnum: FontEnum.semiBold)),
          Text("Junior olmaya çalışan yazılımcı"),
        ],
      ),
    );
  }

  Row buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildProfileImg(),
        buildStatics(),
      ],
    );
  }

  Expanded buildProfileImg() {
    return Expanded(
      flex: 1,
      child: CustomCircleAvatar(
        margin: const EdgeInsets.all(15.0),
        color: Colors.red,
        child: Image.asset(ImageRes.profile),
      ),
    );
  }

  Expanded buildStatics() {
    return Expanded(
      flex: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          profileStatistics(
              text: "Gönderiler", fontEnum: FontEnum.bold, numbers: 48),
          profileStatistics(
              text: "Takipçi", fontEnum: FontEnum.bold, numbers: 300),
          profileStatistics(
              text: "Takip", fontEnum: FontEnum.bold, numbers: 300),
        ],
      ),
    );
  }

  Widget profileEditButton({required Widget child, int flex = 1}) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: ColorRes.gray200),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }

  SizedBox profilePostTagSelect({required image}) {
    return SizedBox(
      width: 50.w,
      height: 20,
      child: image,
    );
  }

  Widget profileStatistics(
      {required String text,
      required FontEnum fontEnum,
      required int numbers,
      EdgeInsetsGeometry padding = const EdgeInsets.all(0)}) {
    return Padding(
      padding: padding,
      child: Column(
        children: [
          Text(
            // numbers.toString(),
            '$numbers',
            style: CustomText.medium(color: ColorRes.black, fontEnum: fontEnum),
          ),
          Text(text),
        ],
      ),
    );
  }
}
