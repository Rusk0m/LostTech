import 'package:flutter/material.dart';
import 'package:flutter_web_app/theme/app_colors.dart';
import 'package:flutter_web_app/theme/app_text_style.dart';

class ListCategories extends StatelessWidget {
  const ListCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.25,
      width:  MediaQuery.of(context).size.width*0.15,
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(color: AppColors.secondPageColor,border: Border.all(color: AppColors.borderColor,width: 2,),borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.monitor,size: 80,color: Colors.white,),
          Text('Monitors',style: AppTextStyle.textTitle,)
        ],
      ),
    );
  }
}
