import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:initial/core/data/posts.dart';
import 'package:initial/core/models/post_model.dart';
import 'package:initial/core/utils/assets.dart';
import 'package:initial/core/utils/colors.dart';
import 'package:initial/core/utils/text.dart';
import 'package:initial/core/widgets/circle_avatar.dart';
import 'package:sizer/sizer.dart';

class PostScreen extends StatelessWidget {
  PostScreen({super.key});
  late List<PostModel> posts;
  @override
  Widget build(BuildContext context) {
    posts = testPosts.map((map) => PostModel.fromMap(map)).toList();

    return Expanded(
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) => Column(
          children: [
            postTabBar(posts[index]),
            postImage(posts[index]),
            postDownBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('${posts[index].likeCount} beğenme',
                      style: CustomText.small(
                          color: ColorRes.black, fontEnum: FontEnum.semiBold)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('${posts[index].name}',
                      style: CustomText.small(
                          color: ColorRes.black, fontEnum: FontEnum.semiBold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Text(
                    '${posts[index].explanation}',
                    style: CustomText.small(
                        color: ColorRes.black, fontEnum: FontEnum.light),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row postDownBar() {
    return Row(
      children: [
        buildDownBarItem(svg: IconRes.heart),
        buildDownBarItem(svg: IconRes.comment),
        buildDownBarItem(svg: IconRes.dm),
        Spacer(),
        buildDownBarItem(svg: IconRes.save),
      ],
    );
  }

  Padding buildDownBarItem({required String svg}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SvgPicture.asset(
        svg,
        height: 20,
        width: 20,
      ),
    );
  }

  Widget postImage(PostModel postModel) {
    return SizedBox(
      height: 40.h,
      child: Image.asset(
        postModel.postImage!,
      ),
    );
  }

  Row postTabBar(PostModel postModel) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomCircleAvatar(
            size: 40,
            child: Image.asset(
              postModel.userImage!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          postModel.name!,
          style: CustomText.medium(
            fontEnum: FontEnum.semiBold,
            color: ColorRes.black,
          ),
        ),
        const Spacer(),
        const Icon(Icons.more_vert_sharp),
      ],
    );
  }
}
