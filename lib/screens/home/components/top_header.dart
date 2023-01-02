import 'package:carousel_slider/carousel_slider.dart';import 'package:elearning/constants/font.dart';import 'package:elearning/screens/cart/cart_screen.dart';import 'package:elearning/screens/home/components/search_field.dart';import 'package:flutter/material.dart';import 'package:flutter_svg/svg.dart';import 'package:provider/provider.dart';import '../../../constants/app_image.dart';import '../../../constants/colors.dart';import '../../../view_model/common_view_model.dart';class TopHeader extends StatefulWidget {  const TopHeader({Key? key}) : super(key: key);  @override  _TopHeaderState createState() => _TopHeaderState();}class _TopHeaderState extends State<TopHeader> {  @override  Widget build(BuildContext context) {    Size size = MediaQuery.of(context).size;    return Consumer<CommonViewModel>(builder: (context, data, child) {      return Container(        padding: EdgeInsets.all(10),        // decoration: BoxDecoration(        //     border: Border(        //         bottom: BorderSide(        //   color: gray_500,        //   width: 1,        // ))),        child: Column(          children: [            Row(              mainAxisAlignment: MainAxisAlignment.spaceBetween,              children: <Widget>[                Row(                  children: [                    Icon(Icons.logo_dev, size: 40,),                    SizedBox(width: 10,),                    Text(                      "Hello Pujan!",                      style: TextStyle(                          fontSize: font_24,                          fontWeight: kW9,                          color: kBlack),                    ),                  ],                ),                Row(                  children: [                    InkWell(                      child: Container(                          child: SvgPicture.asset(                            notification_zero,                        height: 25,                      )),                    ),                    SizedBox(width: 10,),                    InkWell(                      onTap: (){                        Navigator.pushNamed(context, CartScreen.routeName);                      },                      child: Container(                        padding: EdgeInsets.symmetric(horizontal: 10),                        child: SvgPicture.asset(                          cart_outlined,                        )                      ),                    ),                  ],                )              ],            ),            SizedBox(height: 10,),            Row(children: [              SearchField(),              SizedBox(width: 10,),              Container(                height: 45,                width: (size.width - 30) * 0.11,                alignment: Alignment.center,                decoration: BoxDecoration(                    borderRadius: BorderRadius.circular(15),                    color: blue_2                ),                child: SvgPicture.asset(filter, height: 24, color: kWhite,),              ),            ],)          ],        ),      );    });  }}