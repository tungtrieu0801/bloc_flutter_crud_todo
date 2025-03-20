import 'package:bloc_flutter_crud/constants/app_colors.dart';
import 'package:bloc_flutter_crud/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeAppbarWidget extends StatelessWidget {
  const HomeAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.settings,
              size: 30.w,
              color: AppColors.whiteColor,
            ),
            SizedBox(width: 5.w,),
            Text(
              AppStrings.taskFlow,
              style: TextStyle(color: AppColors.whiteColor, fontSize: 25.sp),
            ),
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundColor: Colors.brown.shade800,
              child: const Text('AH'),
            ),
            SizedBox(width: 5.w,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  color: AppColors.inputColor
              ),
              padding: EdgeInsets.all(10.w),
              child: Icon(
                Icons.notifications_active_outlined,
                color: AppColors.whiteColor,
                size: 30,
              ),
            )
          ],
        )
      ],
    );
  }
}
