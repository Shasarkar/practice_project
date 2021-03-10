import 'package:flutter/material.dart';
import '../../constants/textStyle_const.dart';
import '';

Widget loginButton({onPressed}) {
  return Container(
    height: 50,
    width: 250,
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(20)),
    child: TextButton(
      onPressed: onPressed,
      child: Text(
        'Login',
        style: bigWhiteText,
      ),
    ),
  );
}
