import 'package:flutter/material.dart';
import 'package:initial/core/data/posts.dart';
import 'package:initial/core/models/post_model.dart';
import 'package:initial/core/utils/colors.dart';
import 'package:initial/core/utils/text.dart';
import 'package:initial/core/widgets/circle_avatar.dart';
import 'package:sizer/sizer.dart';

class ProfileHighlights extends StatelessWidget {
  ProfileHighlights({
    super.key,
  });
  List<PostModel> posts = testPosts.map((e) => PostModel.fromMap(e)).toList();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Row(
              children: List.generate(
                posts.length,
                (index) => buildHighlight(
                    title: posts[index].name!,
                    child: CustomCircleAvatar(
                        child: Image.asset(posts[index].postImage!)),
                    border: Border.all(
                      color: ColorRes.slate300,
                    ),
                    padding: EdgeInsets.all(2)),
              ),
            ),
            buildHighlight(
                title: "Yeni", child: Icon(Icons.add), border: Border.all())
          ],
        ),
      ),
    );
  }

  Widget buildHighlight({
    required String title,
    required Widget child,
    BoxBorder? border,
    EdgeInsetsGeometry? padding,
  }) {
    return Container(
      width: 25.w,
      child: Column(
        children: [
          CustomCircleAvatar(
            child: child,
            isClip: true,
            size: 60,
            border: border,
            padding: padding,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              title,
              style: CustomText.xSmall(color: ColorRes.slate600, height: 1),
            ),
          )
        ],
      ),
    );
  }
}
