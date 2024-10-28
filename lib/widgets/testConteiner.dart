import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height-60);
    path.quadraticBezierTo(0, size.height-50, 10, size.height-50);
    path.lineTo(size.width/3, size.height-50);

    var firstControlPoint = Offset(size.width / 3+10 , size.height-50); // Первая контрольная точка для кривой (четверть ширины).
    var firstEndPoint = Offset(size.width / 3+20, size.height - 40); // Первая конечная точка кривой (середина контейнера).
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx,firstEndPoint.dy);

    path.lineTo(size.width/3+50, size.height-10);

    var secondControlPoint = Offset(size.width / 3+60 , size.height);
    var secondEndPoint = Offset(size.width / 3+70, size.height);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx,secondEndPoint.dy);

    path.lineTo(size.width-60, size.height);

    var thirdControlPoint = Offset(size.width-50, size.height);
    var thirdEndPoint = Offset(size.width-40, size.height-10);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy, thirdEndPoint.dx,thirdEndPoint.dy);

    path.lineTo(size.width-10, size.height-40);

    var fourthControlPoint = Offset(size.width, size.height-50);
    var fourthEndPoint = Offset(size.width, size.height-60);
    path.quadraticBezierTo(fourthControlPoint.dx, fourthControlPoint.dy, fourthEndPoint.dx,fourthEndPoint.dy);

    path.lineTo(size.width, 60);

    path.quadraticBezierTo(size.width, 50, size.width-10 , 50);

    path.lineTo(size.width/3*2, 50);

    var fifthControlPoint = Offset(size.width/3*2-10, 50);
    var fifthEndPoint = Offset(size.width/3*2-20, 40);
    path.quadraticBezierTo(fifthControlPoint.dx, fifthControlPoint.dy, fifthEndPoint.dx,fifthEndPoint.dy);

    path.lineTo(size.width/3*2-50, 10);

    var sixthControlPoint = Offset(size.width/3*2-60, 0);
    var sixthEndPoint = Offset(size.width/3*2-70, 0);
    path.quadraticBezierTo(sixthControlPoint.dx, sixthControlPoint.dy, sixthEndPoint.dx,sixthEndPoint.dy);

    path.lineTo(10, 0);

    path.quadraticBezierTo(0, 0, 0,10);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
