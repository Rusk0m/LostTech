import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_app/theme/app_colors.dart';
import 'package:flutter_web_app/theme/app_text_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBackground,
      //AppBar
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'lib/assets/images/logo2.1.png',
        ),
        Row(
          children: [
            TextButton(
              onPressed: null,
              child: Text(
                'Start',
                style: AppTextStyle.textTitle,
              ),
            ),
            TextButton(
              onPressed: null,
              child: Text(
                'About',
                style: AppTextStyle.textTitle,
              ),
            ),
            TextButton(
              onPressed: null,
              child: Text(
                'Blog',
                style: AppTextStyle.textTitle,
              ),
            ),
            TextButton(
              onPressed: null,
              child: Text(
                'Contact',
                style: AppTextStyle.textTitle,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),

        const Row(
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search,color: AppColors.subTitle,size: 30,),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.people_alt,color: AppColors.subTitle,size: 30,),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.wallet,color: AppColors.subTitle,size: 30,),
            ),
          ],
        ),
      ],
      ),
    );
  }
}
