import 'package:bloc_flutter_crud/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35.h,
      decoration: BoxDecoration(
        color: AppColors.inputColor,
        borderRadius: BorderRadius.circular(15.r)
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Tìm kiếm...",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide.none
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: AppColors.whiteColor, width: 2),
          ),
        ),
      ),
    );
  }
}
