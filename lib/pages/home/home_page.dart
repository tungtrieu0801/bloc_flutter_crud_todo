import 'package:bloc_flutter_crud/constants/app_colors.dart';
import 'package:bloc_flutter_crud/constants/app_strings.dart';
import 'package:bloc_flutter_crud/pages/home/widget/body_home_widget.dart';
import 'package:bloc_flutter_crud/pages/home/widget/home_appbar_widget.dart';
import 'package:bloc_flutter_crud/pages/utils/search_bar_widget.dart';
import 'package:bloc_flutter_crud/pages/utils/title_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryBackground,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: Column(
            children: [
              HomeAppbarWidget(),
              SizedBox(height: 20.h,),
              TitleWidget(size: 55, text: AppStrings.titleHome,),
              SizedBox(height: 15.h,),
              SearchBarWidget(),
              SizedBox(height: 15.h,),
              Expanded(child: BodyHomeWidget())
            ],
          ),
        ),
      ),
    );
  }
}
