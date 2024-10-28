import 'package:flutter/material.dart';
import 'package:flutter_web_app/theme/app_colors.dart';
import 'package:flutter_web_app/theme/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const  BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: AppColors.contrastPageColor),
        height: 50,
        width: 220,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SHOPE NOW ',
              style: AppTextStyle.body,
            ),
            const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
            )
          ],
        ));
  }
}
