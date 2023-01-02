import 'package:elearning/screens/home/course_single/course_single_details_screen.dart';import 'package:flutter/material.dart';import '../../../../constants/app_image.dart';class PlayList extends StatelessWidget {  const PlayList({Key? key}) : super(key: key);  @override  Widget build(BuildContext context) {    return ListView.separated(      physics: NeverScrollableScrollPhysics(),      separatorBuilder: (_, __) {        return const SizedBox(          height: 20,        );      },      padding: const EdgeInsets.only(top: 20, bottom: 40),      shrinkWrap: true,      itemCount: 10,      itemBuilder: (_, index) {        return LessonCard();      },    );  }}class LessonCard extends StatelessWidget {  const LessonCard({Key? key,}) : super(key: key);  @override  Widget build(BuildContext context) {    return InkWell(      onTap: (){        Navigator.pushNamed(context, CourseSingleDetailsScreen.routeName);      },        child: Row(      children: [        // lesson.isPlaying        //     ?        Image.asset(          kNotification,          height: 45,        ),        //     :        // Image.asset(        //   icPlayNext,        //   height: 45,        // ),        const SizedBox(          width: 15,        ),        Expanded(          child: Column(            crossAxisAlignment: CrossAxisAlignment.start,            children: [              Text(                "Web Development",                style: const TextStyle(                  fontSize: 16,                  fontWeight: FontWeight.w500,                ),              ),              Text(                "10 min 11 sec",                style: const TextStyle(                  fontSize: 13,                  fontWeight: FontWeight.w500,                  color: Colors.grey,                ),              ),            ],          ),        ),        // isDone        // lesson.isCompleted        //     ?        Image.asset(          kNotification,          height: 30,        )        //     : Image.asset(        //   copy,        //   height: 30,        // ),      ],    ));  }}