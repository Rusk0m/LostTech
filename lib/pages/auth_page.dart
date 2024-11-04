import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_app/theme/app_colors.dart';
import 'package:flutter_web_app/theme/app_text_style.dart';
import 'package:flutter_web_app/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String? errorMessage = '';
  bool isLogin = true;
  bool _obscureText = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerName = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _entryField(
      String title,
      String hint,
      TextEditingController controller,
      IconData icon, {
        bool isPassword = false,
      }) {
    return TextField(
      controller: controller,
      obscureText: isPassword ? _obscureText : false, // Используем _obscureText из State
      decoration: InputDecoration(
        labelText: title,
        hintText: hint,
        contentPadding:
        const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
        suffixIcon: isPassword ?
        IconButton(icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off,),
          color: AppColors.contrastPageColor,
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        )
            : Icon(icon, color: AppColors.contrastPageColor,), // Иконка появляется только для поля пароля
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.contrastPageColor), // Цвет подчеркивания при фокусе
        ),
      ),
      style: const TextStyle(color: AppColors.subTitle),
      cursorColor: AppColors.contrastPageColor,
    );
  }

  Widget _errorMessage() {
    return Text(
      errorMessage == '' ? '' : 'Hm ? $errorMessage',
      style: const TextStyle(color: Colors.red),
    );
  }

  Widget _passwordHint() {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: _showDialog,
        child: Text(
          'Forgot your password?',
          style: AppTextStyle.subtitle,
        ),
      ),
    );
  }
  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('ЛОХ'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Закрываем диалог
              },
            ),
          ],
        );
      },
    );
  }

  Widget _submitButton() {
    return ElevatedButton(
      onPressed:
      isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size(150, 40)),
        backgroundColor:
        MaterialStateProperty.all(AppColors.contrastPageColor),
      ),
      child: Text(
        isLogin ? 'Login' : 'Register',
        style: AppTextStyle.body,
      ),
    );
  }

  Widget _loginOrRegisterButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      child: Text(
        isLogin ? 'Is this your first time here?' : 'Already have an account?',
        style: AppTextStyle.subtitle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.primaryBackground,
      body: Center(
        child: Container(
          width: MediaQuery.sizeOf(context).height * 0.5,
          decoration: BoxDecoration(
            color: AppColors.secondPageColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: AppColors.contrastPageColor.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 6,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 80,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.contrastPageColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                ),
                child: Center(
                  child: Text(isLogin?'Sign In':'Register', style: AppTextStyle.textTitle),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!isLogin)
                      _entryField('NAME', 'Please enter username', _controllerName,Icons.drive_file_rename_outline,),
                    const SizedBox(height: 10),
                    _entryField('EMAIL', 'Please enter email or username', _controllerEmail, Icons.email_outlined,),
                    const SizedBox(height: 10),
                    _entryField('PASSWORD', 'Please enter password', _controllerPassword, Icons.remove_red_eye_outlined, isPassword: true,),
                    isLogin ? _passwordHint() : const SizedBox.shrink(),
                    const SizedBox(height: 55),
                    _errorMessage(),
                    const SizedBox(height: 15),
                    _submitButton(),
                    const SizedBox(height: 5),
                    _loginOrRegisterButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
