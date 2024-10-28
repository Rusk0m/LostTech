import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_app/my_flutter_app_icons.dart';
import 'package:flutter_web_app/theme/app_colors.dart';
import 'package:flutter_web_app/theme/app_text_style.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white30),
          color: AppColors.secondPageColor,
          borderRadius: BorderRadius.circular(8)),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(MyFlutterAppIcons.laptop,color: Colors.white,size: 40,),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('vdmlkd',style: AppTextStyle.textTitle,),
                  Text('kdmsfkmd',style: AppTextStyle.body,),
                ],
              )
            ],
          ),const Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 10),
            child: VerticalDivider(
              width: 20, // Ширина пространства вокруг линии
              thickness: 1, // Толщина линии
              color: Colors.grey, // Цвет линии
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.support_agent_outlined,color: Colors.white,size: 40,),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('vdmlkd',style: AppTextStyle.textTitle,),
                  Text('kdmsfkmd',style: AppTextStyle.body,),
                ],
              )
            ],
          ),const Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 10),
            child: VerticalDivider(
              width: 20, // Ширина пространства вокруг линии
              thickness: 1, // Толщина линии
              color: Colors.grey, // Цвет линии
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(MyFlutterAppIcons.phone,color: Colors.white,size: 40,),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('vdmlkd',style: AppTextStyle.textTitle,),
                  Text('kdmsfkmd',style: AppTextStyle.body,),
                ],
              )
            ],
          ),Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 10),
            child: VerticalDivider(
              width: 20, // Ширина пространства вокруг линии
              thickness: 1, // Толщина линии
              color: Colors.grey, // Цвет линии
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.support_agent_outlined,color: Colors.white,size: 40,),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('vdmlkd',style: AppTextStyle.textTitle,),
                  Text('kdmsfkmd',style: AppTextStyle.body,),
                ],
              )
            ],
          )
        ],
      )
    );
  }
}
