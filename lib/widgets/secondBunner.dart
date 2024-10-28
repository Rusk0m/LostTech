import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_app/theme/app_colors.dart';
import 'package:flutter_web_app/theme/app_text_style.dart';
import 'package:flutter_web_app/widgets/custom_button.dart';

class SecondBunner extends StatelessWidget {
  const SecondBunner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          color: AppColors.borderColor,
        ),
        color: Colors.white,
      ),
      //clipBehavior: Clip.hardEdge, // Обрезка содержимого по краям контейнера
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // Закругление углов для изображения
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/images/laptop_img.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              border: Border.all(
                color: AppColors.borderColor,
              ),
              color: AppColors.secondPageColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Categories', style: AppTextStyle.body),
                  Text('Name', style: AppTextStyle.body),
                  Text('Price', style: AppTextStyle.body),
                  Divider(
                    color: AppColors.borderColor, // Цвет линии
                    height: 3,
                    thickness: 1,
                  ),
                  Text(
                    'Description mndflsvklklksmfvkmlkmdfvlkmvlkmklvmlkmvlkmsdflkvlkdm',
                    style: AppTextStyle.body,
                  ),
                  CustomButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
