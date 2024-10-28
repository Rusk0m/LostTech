import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_app/theme/app_colors.dart';
import 'package:flutter_web_app/widgets/testConteiner.dart';

import '../theme/app_text_style.dart';

class ContactInfoContainer extends StatefulWidget {
  ContactInfoContainer({super.key});

  @override
  _ContactInfoContainerState createState() => _ContactInfoContainerState();
}

class _ContactInfoContainerState extends State<ContactInfoContainer>{

final List<String> items = ['Starts', 'Locations', 'Jobs', 'Services'];
  String? selectedValue;
  List<String> dropdownItems = ['English', 'Русский', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Stack(
        fit: StackFit.loose,
        children: [
          // Первый (задний) контейнер
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5, // Сдвиг вниз на 50%
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width-80, // Ширина экрана
              decoration: BoxDecoration(
                  color: AppColors.secondPageColor,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          // Второй (передний) контейнер, который перекрывает первый
          ClipPath(
            //clipBehavior: Clip.none,
            clipper: WaveClipper(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              color: AppColors.contrastPageColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('lib/assets/images/logo4.png'),
                          const Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25.0),
                            child: Text('Information'),
                          ),
                          DropdownButton<String>(
                              // Значение, которое сейчас выбрано
                              value: selectedValue,
                              // Подсказка, если ничего не выбрано
                              hint: Text('Language'),
                              items: dropdownItems.map((String item) {
                                return DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                selectedValue = newValue; // Обновляем выбранное значение
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    const VerticalDivider(
                      width: 20,
                      thickness: 1.5,
                      color: Colors.black,
                    ),
                    const Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('ContactInfo'),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25.0),
                            child: Text('Other information'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.account_circle),
                              Icon(Icons.account_circle),
                              Icon(Icons.account_circle),
                              Icon(Icons.account_circle),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const VerticalDivider(
                      width: 20,
                      thickness: 1.5,
                      color: Colors.black,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 200,
                        child: GridView.builder(
                          padding: EdgeInsets.all(8),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            childAspectRatio: 3,
                          ),
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            return Center(
                              child: Text(items[index]),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
