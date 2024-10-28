import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_app/my_flutter_app_icons.dart';
import 'package:flutter_web_app/theme/app_colors.dart';
import 'package:flutter_web_app/theme/app_text_style.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner({super.key, required this.nameProduct, required this.categories, required this.price, });

final String nameProduct;
final String categories;
final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.17,
      height: MediaQuery.of(context).size.width * 0.24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
        border: Border.all(color: AppColors.borderColor, width: 2),
      ),
      margin: EdgeInsets.all(6),
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 7,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Image.asset(
                    'lib/assets/images/banner_img.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: AppColors.secondPageColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8))),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
                  /*color: AppColors.secondPageColor,*/
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        categories,
                        style: AppTextStyle.subtitle,
                      ),
                      Row(
                        children: [
                          Text(
                            nameProduct,
                            style: AppTextStyle.body,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_right_alt,
                            color: Colors.white70,
                            size: 20,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '${price}',
                            style: AppTextStyle.contrastBody,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.euro_symbol_sharp,color: AppColors.contrastPageColor,size: 15,)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: FractionalOffset(1, 0.74),
            child: Container(

              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.contrastPageColor, // Задний фон
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)// Круглая форма
              ),
              child: IconButton(
                icon: Icon(Icons.add,size: MediaQuery.sizeOf(context).width*0.015,),
                splashColor: Colors.transparent,   // Убирает всплеск
                highlightColor: Colors.transparent,   // Убирает эффект выделения
                color: Colors.white,
                onPressed: () {
                  print("filled background");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
