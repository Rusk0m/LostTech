import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_app/theme/app_colors.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.contrastPageColor,
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Text('')
                      ],
                    ),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}
