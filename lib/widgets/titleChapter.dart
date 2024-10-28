import 'package:flutter/material.dart';
import '../theme/app_text_style.dart';

class TitleChapter extends StatelessWidget {
  const TitleChapter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100,vertical: 20),
      child: ListTile(
        title: Text('SPECIAL OFFERS',style: AppTextStyle.mainTitle,),
        subtitle: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('lgfmlbkvslkmbmsbsl;b,;lsd,b;',style:AppTextStyle.body,),
        ),
        trailing: SizedBox(
          width: 150,
          child: Row(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('View all product',style: AppTextStyle.body,),
              Icon(Icons.arrow_forward_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
