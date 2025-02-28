import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:naemansan/viewModel/my_profile_view_model.dart';

import 'package:naemansan/viewModel/user/user_view_model.dart';
import 'package:naemansan/widget/base/custom_appbar.dart';

import 'package:naemansan/widget/base/custom_tabbar.dart';
import 'package:naemansan/widget/myProfile/followuser_porfile_list.dart';
import 'package:naemansan/widget/myProfile/user_profile_header.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MyProfileViewModel userProfileViewModel =
        Get.put(MyProfileViewModel());

    return Scaffold(
      //앱바...
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: CustomAppbar(
            leftIcon: null,
            rightIcon: "edit",
            rightLink: "/myProfileEdit",
            content: '마이페이지',
          )),
      //앱바...

      body: GetBuilder<MyProfileViewModel>(
          init: userProfileViewModel,
          builder: (userProfileViewModel) {
            return Container(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Column(children: [
                //상단 유저 프로필
                UserProfileHeader(
                  userProfile: userProfileViewModel.user.value,
                ),
                //상단 유저 프로필

                //팔로잉 팔로워
                Expanded(
                  child: CustomTabbar(
                    tabs: const ["팔로잉", "팔로워"],
                    rightTabs: const [],
                    tabviews: [
                      FollowuserProfileList(
                        userList: userProfileViewModel.following,
                        type: "following",
                      ),
                      FollowuserProfileList(
                        userList: userProfileViewModel.follower,
                        type: "follower",
                      ),
                    ],
                  ),
                ),
                //팔로잉 팔로워
              ]),
            );
          }),
    );
  }
}
