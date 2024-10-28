import 'package:flutter/material.dart';
import 'package:flutter_web_app/theme/app_colors.dart';
import 'package:flutter_web_app/theme/app_text_style.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryBackground,
        ),
        child: Center(
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.6,
            width: MediaQuery.sizeOf(context).height * 0.5,
            decoration: BoxDecoration(
              color: AppColors.secondPageColor,
              borderRadius: BorderRadius.circular(15),
              // Добавляем тень к этому контейнеру
              boxShadow: [
                BoxShadow(
                  color: AppColors.contrastPageColor.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 6,
                  offset: Offset(0, 0), // Вторая тень с противоположным смещением
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.contrastPageColor,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  ),
                  child: Center(
                    child: Text('Sing In', style: AppTextStyle.textTitle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'EMAIL',
                          hintText: 'Please enter email or username',
                          contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
                          suffixIcon: Icon(Icons.email_outlined, color: AppColors.contrastPageColor),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.contrastPageColor), // Цвет подчеркивания при фокусе
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red), // Цвет подчеркивания при ошибке
                          ),
                        ),
                        style: TextStyle(color: AppColors.subTitle), // Цвет текста при вводе
                        cursorColor: AppColors.contrastPageColor, // Цвет курсора
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          hintText: 'Please enter password',
                          suffixIcon: Icon(Icons.remove_red_eye_outlined, color: AppColors.contrastPageColor),
                        ),
                        style: TextStyle(color: AppColors.subTitle),
                        cursorColor: AppColors.contrastPageColor, // Цвет курсора
                      ),
                      SizedBox(height: 60),
                      TextButton(
                        onPressed: () {},
                        child: Text('Sing In', style: AppTextStyle.body),
                        style: TextButton.styleFrom(
                          maximumSize: Size(double.infinity, 50),
                          minimumSize: Size(double.infinity, 50),
                          backgroundColor: AppColors.contrastPageColor, // Фоновый цвет
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.comment),
                            Icon(Icons.comment),
                            Icon(Icons.comment),
                          ],
                        ),
                        Text('Do not have account?', style: TextStyle(color: AppColors.subTitle)),
                        Text('SING UP NOW', style: TextStyle(color: AppColors.contrastPageColor)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
