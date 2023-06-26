import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/footer.dart';
import '../../widgets/profile_edit.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  @override
  void initState() {
    _tabcontroller = TabController(length: 9, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        foregroundColor: kWhite,
        surfaceTintColor: kWhite,
        toolbarHeight: 5.h,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: TabBar(
                physics: const BouncingScrollPhysics(),
                dividerColor: kGrey.withOpacity(0.5),
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
                controller: _tabcontroller,
                indicatorColor: kBlack,
                labelColor: kBlack,
                unselectedLabelColor: kGrey,
                tabs: const [
                  Tab(text: 'Edit'),
                  Tab(text: 'Preview'),
                  Tab(text: 'Promote'),
                  Tab(text: 'Personal Info'),
                  Tab(text: 'Business Info'),
                  Tab(text: 'Service Menu'),
                  Tab(text: 'Manage Availability'),
                  Tab(text: 'Photos'),
                  Tab(text: 'Star Rating & Reviews'),
                ],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabcontroller,
        children: [
          // Edit Tab >>>>>>>>>>>>>>>>>>>>>>>>
          ProfileEdit(),
          Center(
            child: Text('Preview'),
          ),
          Center(
            child: Text('Promote'),
          ),
          Center(
            child: Text('Personal Info'),
          ),
          Center(
            child: Text('Business Info'),
          ),
          Center(
            child: Text('Service Menu'),
          ),
          Center(
            child: Text('Manage Availability'),
          ),
          Center(
            child: Text('Photos'),
          ),
          Center(
            child: Text('Star Rating & Reviews'),
          ),
        ],
      ),
    );
  }
}
