import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/auth_page.dart';
import 'package:flutter_web_app/pages/main_page.dart';
import 'package:flutter_web_app/theme/app_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_web_app/widget_tree.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.contrastPageColor),
        useMaterial3: true,
      ),
      home: const WidgetTree(),
    );
  }
}
