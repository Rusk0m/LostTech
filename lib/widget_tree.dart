import 'package:flutter/material.dart';
import 'package:flutter_web_app/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_web_app/pages/auth_page.dart';
import 'package:flutter_web_app/pages/main_page.dart';
class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context,snapshot)
    {
      if(snapshot.hasData) {
          return MainPage();
        }
      else {
        return const AuthPage();
      }
    });
  }
}
