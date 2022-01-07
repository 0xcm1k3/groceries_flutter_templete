// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use

import 'package:flutter/material.dart';

class appbarWidget extends StatelessWidget {
  const appbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/avatar.jpg"),
          radius: 45,

        ),
        Expanded(child: Container()),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.notifications_active_outlined),
          ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.search_rounded),
          )  
          
      ],
    );
  }
}