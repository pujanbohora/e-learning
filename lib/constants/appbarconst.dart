import 'package:elearning/constants/colors.dart';
import 'package:flutter/material.dart';

getapbar(Widget leading, bool centertitle, Widget title, BuildContext context) {
  final PreferredSizeWidget psw = AppBar(
      centerTitle: centertitle,
      leading: leading,
      elevation: 0.0,
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: InkWell(
              child: SizedBox(
                height: 50,
                width: 30,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    Icon(Icons.notifications, color: Colors.black),
                    Positioned(
                      right: 0,
                      top: 10,
                      child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: Colors.red)),
                          child: Stack(
                            children: const [
                              Positioned(
                                  bottom: 0,
                                  top: -3,
                                  left: 3,
                                  right: 0,
                                  child: Text("3",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)))
                            ],
                          )),
                    )
                  ],
                ),
              )),
        )
      ],
      title: title,
      iconTheme: const IconThemeData(color: kicontheme //change your color here
      ),
      backgroundColor: Kbackgroundcolor);
  return psw;
}

// Icon(
//
// Icons.notifications, color: Colors.black)