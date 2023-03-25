import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:initial/core/data/posts.dart';
import 'package:initial/core/models/post_model.dart';
import 'package:initial/core/utils/assets.dart';
import 'package:initial/core/utils/colors.dart';
import 'package:initial/core/utils/text.dart';
import 'package:initial/core/widgets/circle_avatar.dart';
import 'package:initial/view/home/home_controller.dart';
import 'package:sizer/sizer.dart';

class PostScreen extends StatelessWidget {
  PostScreen({super.key});
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Expanded(
          child: ListView.builder(
            itemCount: homeController.posts.length,
            itemBuilder: (context, index) => Column(
              children: [
                postTabBar(homeController.posts[index]),
                postImage(homeController.posts[index]),
                postDownBar(homeController.posts[index]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                          '${homeController.posts[index].likeCount} beğenme',
                          style: CustomText.small(
                              color: ColorRes.black,
                              fontEnum: FontEnum.semiBold)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text('${homeController.posts[index].name}',
                          style: CustomText.small(
                              color: ColorRes.black,
                              fontEnum: FontEnum.semiBold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text(
                        '${homeController.posts[index].explanation}',
                        style: CustomText.small(
                            color: ColorRes.black, fontEnum: FontEnum.light),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget postDownBar(PostModel postModel) {
    return Row(
      children: [
        buildDownBarItem(
          icon: postModel.isLiked! ? Icons.favorite : Icons.favorite_outline,
          color: postModel.isLiked! ? Colors.red : null,
          onTap: () {
            postModel.isLiked = !postModel.isLiked!;
            homeController.posts.refresh();
            print(postModel);
          },
        ),
        buildDownBarItem(icon: Icons.chat_bubble_outline),
        buildDownBarItem(icon: Icons.send_outlined),
        Spacer(),
        buildDownBarItem(icon: Icons.bookmark_outline),
      ],
    );
  }

  Widget buildDownBarItem(
      {required IconData icon, Color? color, void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          size: 20,
          color: color,
        ),
      ),
    );
  }

  Widget postImage(PostModel postModel) {
    return InkWell(
      onDoubleTap: () {
        postModel.isLiked = true;

        homeController.posts.refresh();
      },
      child: SizedBox(
        height: 40.h,
        child: Image.asset(
          postModel.postImage!,
        ),
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
