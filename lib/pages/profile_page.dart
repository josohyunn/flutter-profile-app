import 'package:flutter/material.dart';

import '../component/profile.header.dart';
import '../component/profile_buttons.dart';
import '../component/profile_count_info.dart';
import '../component/profile_drawer.dart';
import '../component/profile_tab.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverList(
                // 스크롤이 없는 애들은 여기
                delegate: SliverChildListDelegate([
              ProfileHeader(),
              ProfileCountInfo(),
              ProfileButtons(),
            ]))
          ];
        },
        body: Expanded(child: ProfileTab()), // 스크롤이 있는 애들은 여기
      ),
    );
  }
}
