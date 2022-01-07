// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, library_prefixes
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  final Function action;
  final String btnText;
  final Color bgColor,txtColor,brderColor;
  const customButton({
    Key? key,
    required this.action,
    required this.btnText,
    required this.bgColor,
    required this.txtColor,
    this.brderColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){action(true);},
      child: Container(
      height: 45,
      width: 150,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: brderColor,
        )
        ),
      alignment: Alignment.center,
      child: Text(
        btnText,
        style: TextStyle(
          fontFamily: "Inter-Regular",
          fontSize: 18,
          color: txtColor,
        ),
        
        ),
        ),
    );
  }
}