import 'package:bloc_flutter_crud/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyHomeWidget extends StatefulWidget {
  const BodyHomeWidget({super.key});

  @override
  State<BodyHomeWidget> createState() => _BodyHomeWidgetState();
}

class _BodyHomeWidgetState extends State<BodyHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.taskBackground,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tasks",
                          style: TextStyle(fontSize: 17.sp),
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_back_ios_new),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Container(
                    height: 170.h,
                    decoration: BoxDecoration(
                      color: AppColors.taskBackground,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Morning Standup", style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w600),),
                        Row(
                          children: [
                            Icon(Icons.lock_clock),
                            Text("${DateTime.now().hour.toString()}: ${DateTime.now().minute.toString()} - ${DateTime.now().hour.toString()}: ${DateTime.now().minute.toString()}"),
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 16.r,
                              backgroundColor: Colors.brown.shade800,
                              child: const Text('AH', style: TextStyle(color: AppColors.whiteColor),),
                            ),
                            CircleAvatar(
                              radius: 16.r,
                              backgroundColor: Colors.brown.shade800,
                              child: const Text('AH', style: TextStyle(color: AppColors.whiteColor),),
                            ),
                            CircleAvatar(
                              radius: 16.r,
                              backgroundColor: Colors.brown.shade800,
                              child: const Text('AH', style: TextStyle(color: AppColors.whiteColor),),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 5.w,),
            Expanded(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.greenColor,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    height: 135.h,
                    padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Notes", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),),
                        Text("Design Handoff to Developers", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Container(
                    height: 70.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                              height: 80.h,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(18.r)
                              ),
                              child: Icon(Icons.email_outlined, size: 40.h, color: AppColors.whiteColor,),
                            )
                        ),
                        SizedBox(width: 5.w,),
                        Expanded(
                            child: Container(
                              height: 80.h,
                              decoration: BoxDecoration(
                                  color: AppColors.approveColor,
                                  borderRadius: BorderRadius.circular(18.r)
                              ),
                              child: Icon(Icons.video_camera_back_rounded, size: 40.h, color: AppColors.whiteColor,),
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 5.h,),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(25.r)
            ),
            padding: EdgeInsets.all(12.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Reminder", style: TextStyle(color: AppColors.whiteColor, fontSize: 17.sp),),
                    Row(
                      children: [
                        Icon(Icons.arrow_back_ios_new, color: AppColors.whiteColor,),
                        Icon(Icons.arrow_forward_ios, color: AppColors.whiteColor,),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ensure design elements", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800, color: Colors.white)),
                    Text("1 of 3", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500, color: Colors.white))
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
