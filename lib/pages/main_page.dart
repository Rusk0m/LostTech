import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_app/theme/app_colors.dart';
import 'package:flutter_web_app/theme/app_text_style.dart';
import 'package:flutter_web_app/widgets/backgroungImage.dart';
import 'package:flutter_web_app/widgets/contactInfoConteiner.dart';
import 'package:flutter_web_app/widgets/customBunner.dart';
import 'package:flutter_web_app/widgets/customAppBar.dart';
import 'package:flutter_web_app/widgets/infoCard.dart';
import 'package:flutter_web_app/widgets/listCategories.dart';
import 'package:flutter_web_app/widgets/productBanner.dart';
import 'package:flutter_web_app/widgets/secondBunner.dart';
import 'package:flutter_web_app/widgets/testConteiner.dart';
import 'package:flutter_web_app/widgets/testWidget.dart';
import 'package:flutter_web_app/widgets/titleChapter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
     body: ListView(
       children: [
         CustomAppBar(),
         MediaQuery.removePadding(
           context: context,
           removeRight: true,
           child: Row(
             children: [
               BackgroundImage(),
               Container(
                 //  width: double.infinity,
                   width: MediaQuery.of(context).size.width * 0.3,
                   height: MediaQuery.of(context).size.height * 0.8,
                   child: CustomBanner(documentId: '81zxT0rEl42f9NFHYEV7',)),
             ],
           ),
         ),
         SizedBox(
           height: 30,
         ),
         Center(
             child: InfoCard()
         ),
         const SizedBox(
           height: 20,
         ),
         const TitleChapter(),
         Container(
           height: MediaQuery.of(context).size.height*0.8,
           child: Stack(
             children: [
               Positioned(
                 top: 400,
                 child: ClipPath(
                   //clipBehavior: Clip.none,
                   clipper: WaveClipper(),
                   child: Container(
                       height: MediaQuery.of(context).size.height * 0.27,
                       width: MediaQuery.of(context).size.width * 0.8,
                       color: AppColors.contrastPageColor,)
                 ),
               ),
               const Padding(
               padding: const EdgeInsets.symmetric(horizontal: 150),
               child: SecondBunner(),
             ),
             ]
           ),
         ),
         TitleChapter(),
         const Padding(
           padding: EdgeInsets.symmetric(horizontal: 150),
             child: Expanded(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   ProductBanner(categories: 'Phone',nameProduct: 'Iphone 16',price: 1000,),
                   ProductBanner(categories: 'Phone',nameProduct: 'Iphone 16',price: 1000,),
                   ProductBanner(categories: 'Phone',nameProduct: 'Iphone 16',price: 1000,),
                   ProductBanner(categories: 'Phone',nameProduct: 'Iphone 16',price: 1000,),
                 ],
               ),
             ),
           ),
         SizedBox(height: 40,),
         SizedBox(
           width: MediaQuery.of(context).size.width*0.8,
             child: TitleChapter()
         ),
         const Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             ListCategories(),
             ListCategories(),
             ListCategories(),
             ListCategories(),
             ListCategories(),
           ],
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 20),
           child: ContactInfoContainer(),
         ),
         SizedBox(
           height: 40,
         ),
         Container(

         )
       ],
     ) ,
    );
  }
}

