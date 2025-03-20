import 'package:bloc_flutter_crud/constants/app_colors.dart';
import 'package:flutter/material.dart';
class TitleWidget extends StatelessWidget {

  final double size;

  final String text;

  const TitleWidget({super.key, required this.size, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, fontWeight: FontWeight.w700, color: AppColors.whiteColor),
      textAlign: TextAlign.left,
      softWrap: true,
      maxLines: 2,
      overflow: TextOverflow.visible,
    );
  }

}
