import 'package:flutter/material.dart';
import 'package:flutter_web_app/theme/app_colors.dart';
import 'package:flutter_web_app/theme/app_text_style.dart';
import 'package:flutter_web_app/widgets/custom_button.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.zero,
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'lib/assets/images/background_phone.png'), // Путь к изображению
          fit: BoxFit.cover, // Масштабирование изображения
        ),
      ),
      child: Container(
        // Полупрозрачный черный слой
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7), // Уровень затемнения (0.5 = 50% прозрачности)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 180),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'REVIVING THE HARDWARE',
                style: AppTextStyle.mainTitle
                ),
              Text(
                  'Your best place for refurbished devices that combine quality'
                      ' and affordability, giving technology a second chance.',
                  style: AppTextStyle.body
              ),
             CustomButton()
            ],
          ),
        ),
      ),
    );
  }
}
