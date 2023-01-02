import 'package:cached_network_image/cached_network_image.dart';import 'package:flutter/material.dart';class CommentPost extends StatefulWidget {  @override  _CommentPostState createState() => _CommentPostState();}class _CommentPostState extends State<CommentPost> {  var show = false;  @override  Widget build(BuildContext context) {    return Column(      crossAxisAlignment: CrossAxisAlignment.start,      children: [        // TextField(        //   decoration: InputDecoration(        //     hintText: 'Write a comment...',        //     hintStyle: TextStyle(color: Colors.grey),        //     // border: InputBorder.none,        //     prefixIcon: Icon(Icons.send),        //   ),        // ),        SizedBox(          height: 20,        ),        //list comments        Card(          margin: EdgeInsets.zero,          shape: RoundedRectangleBorder(            borderRadius: BorderRadius.only(              topLeft: Radius.circular(12.0),              topRight: Radius.circular(12.0),            ),          ),          color: Theme.of(context).cardColor,          elevation: 0.8,          child: Container(            constraints: BoxConstraints(              maxHeight: double.infinity,            ),            margin: EdgeInsets.only(right: 16, left: 16),            child: ListView(              padding: EdgeInsets.only(top: 20),              shrinkWrap: true,              physics: NeverScrollableScrollPhysics(),              children: [                Container(                  margin: EdgeInsets.only(bottom: 4),                  child: Row(                    crossAxisAlignment: CrossAxisAlignment.start,                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                    children: [                      Text.rich(                        TextSpan(                          children: [                            WidgetSpan(                              child: Container(                                margin: EdgeInsets.only(right: 8.0),                                width: 20,                                height: 20,                                decoration: new BoxDecoration(                                  borderRadius:                                      BorderRadius.circular(100),                                  image: new DecorationImage(                                    image: CachedNetworkImageProvider(                                      // ApiRoutes.postImageUrl + 'https://naijacrawl.com/logo/logo.webp',                                      'https://naijacrawl.com/logo/logo.webp',                                      scale: 1.0,                                    ),                                    fit: BoxFit.fill,                                  ),                                ),                              ),                            ),                            TextSpan(                              text: "Albert Flores",                              style: TextStyle(                                  fontSize: 16,                                  color: Theme.of(context)                                      .highlightColor),                            ),                          ],                        ),                      ),                      Text(                        "3 mins ago",                        // // style: Theme.of(context).textTheme.headline3,                      ),                    ],                  ),                ),                Text(                  "kizLorem ipsum dolor sit amet, consectetur lit ut... Lorem ipsum dolor sit ",                  style: TextStyle(                      fontSize: 14,                      color: Theme.of(context).disabledColor),                  textAlign: TextAlign.left,                ),                Container(                  margin: EdgeInsets.only(bottom: 10, top: 10),                  child: Row(                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                    children: [                      InkWell(                        child: Text('6 replies',                            style: TextStyle(                                fontSize: 12,                                color: show                                    ? Colors.blue                                    : Theme.of(context)                                        .disabledColor)),                        onTap: () {                          setState(() {                            if (show == true) {                              show = false;                            } else {                              show = true;                            }                          });                        },                      ),                      Text.rich(                        TextSpan(                          style: Theme.of(context).textTheme.button,                          children: [                            WidgetSpan(                              child: Container(                                padding: EdgeInsets.only(right: 2.0),                                child: Icon(                                  Icons.thumb_down,                                  size: 15.0,                                  color: Colors.red,                                ),                              ),                            ),                            TextSpan(                                text: "3",                                style: TextStyle(                                    fontSize: 14, color: Colors.red)),                          ],                        ),                      ),                      Text.rich(                        TextSpan(                          style: Theme.of(context).textTheme.button,                          children: [                            WidgetSpan(                              child: Container(                                padding: EdgeInsets.only(right: 2.0),                                child: Icon(                                  Icons.thumb_up,                                  size: 15.0,                                  color:                                      Theme.of(context).buttonColor,                                ),                              ),                            ),                            TextSpan(                                text: "3",                                style: TextStyle(                                    fontSize: 14,                                    color: Theme.of(context)                                        .buttonColor)),                          ],                        ),                      ),                      Text.rich(                        TextSpan(                          style: Theme.of(context).textTheme.button,                          children: [                            WidgetSpan(                              child: Container(                                padding: EdgeInsets.only(right: 2.0),                                child: Icon(                                  Icons.reply,                                  size: 15.0,                                  color: Colors.blue,                                ),                              ),                            ),                            TextSpan(                                text: "Reply",                                style: TextStyle(                                    fontSize: 14,                                    color: Colors.blue)),                          ],                        ),                      ),                    ],                  ),                ),              ],            ),          ),        ),        //child comment        if (show == true)          Container(            margin: EdgeInsets.only(left: 20),            width: MediaQuery.of(context).size.width,            child: Card(              margin: EdgeInsets.zero,              shape: RoundedRectangleBorder(                borderRadius: BorderRadius.only(                  bottomLeft: Radius.circular(12.0),                  bottomRight: Radius.circular(12.0),                ),              ),              color: Theme.of(context).cardColor,              elevation: 0.8,              child: Container(                constraints: BoxConstraints(                  maxHeight: double.infinity,                ),                margin: EdgeInsets.only(right: 16, left: 16),                child: ListView(                  padding: EdgeInsets.only(top: 20),                  shrinkWrap: true,                  physics: NeverScrollableScrollPhysics(),                  children: [                    Container(                      margin: EdgeInsets.only(bottom: 4),                      child: Row(                        crossAxisAlignment: CrossAxisAlignment.start,                        mainAxisAlignment:                            MainAxisAlignment.spaceBetween,                        children: [                          Text.rich(                            TextSpan(                              children: [                                WidgetSpan(                                  child: Container(                                    margin:                                        EdgeInsets.only(right: 8.0),                                    width: 20,                                    height: 20,                                    decoration: new BoxDecoration(                                      borderRadius:                                          BorderRadius.circular(100),                                      image: new DecorationImage(                                        image:                                            CachedNetworkImageProvider(                                          'https://naijacrawl.com/logo/logo.webp',                                          scale: 1.0,                                        ),                                        fit: BoxFit.fill,                                      ),                                    ),                                  ),                                ),                                TextSpan(                                  text: "Albert Flores",                                  style: TextStyle(                                      fontSize: 16,                                      color: Theme.of(context)                                          .highlightColor),                                ),                              ],                            ),                          ),                          Text(                            "3 mins ago",                            // style:                                // Theme.of(context).textTheme.headline3,                          ),                        ],                      ),                    ),                    Text(                      "kizLorem ipsum dolor sit amet, consectetur lit ut... Lorem ipsum dolor sit ",                      style: TextStyle(                          fontSize: 14,                          color: Theme.of(context).disabledColor),                      textAlign: TextAlign.left,                    ),                    Container(                      margin: EdgeInsets.only(bottom: 10, top: 10),                      child: Row(                        mainAxisAlignment:                            MainAxisAlignment.spaceBetween,                        children: [                          Text(                            '6 replies',                            // style:                                // Theme.of(context).textTheme.headline3,                          ),                          Text.rich(                            TextSpan(                              style:                                  Theme.of(context).textTheme.button,                              children: [                                WidgetSpan(                                  child: Container(                                    padding:                                        EdgeInsets.only(right: 2.0),                                    child: Icon(                                      Icons.thumb_down,                                      size: 15.0,                                      color: Colors.red,                                    ),                                  ),                                ),                                TextSpan(                                    text: "3",                                    style: TextStyle(                                        fontSize: 14,                                        color: Colors.red)),                              ],                            ),                          ),                          Text.rich(                            TextSpan(                              style:                                  Theme.of(context).textTheme.button,                              children: [                                WidgetSpan(                                  child: Container(                                    padding:                                        EdgeInsets.only(right: 2.0),                                    child: Icon(                                      Icons.thumb_up,                                      size: 15.0,                                      color: Theme.of(context)                                          .buttonColor,                                    ),                                  ),                                ),                                TextSpan(                                    text: "3",                                    style: TextStyle(                                        fontSize: 14,                                        color: Theme.of(context)                                            .buttonColor)),                              ],                            ),                          ),                          Text.rich(                            TextSpan(                              style:                                  Theme.of(context).textTheme.button,                              children: [                                WidgetSpan(                                  child: Container(                                    padding:                                        EdgeInsets.only(right: 2.0),                                    child: Icon(                                      Icons.reply,                                      size: 15.0,                                      color: Colors.blue,                                    ),                                  ),                                ),                                TextSpan(                                    text: "Reply",                                    style: TextStyle(                                        fontSize: 14,                                        color: Colors.blue)),                              ],                            ),                          ),                        ],                      ),                    ),                  ],                ),              ),            ),          ),        if (show == true)          Container(            margin: EdgeInsets.only(left: 20),            width: MediaQuery.of(context).size.width,            child: Divider(              height: 0,              thickness: 0.5,              color: Theme.of(context).disabledColor,            ),          ),        if (show == true)          Container(            margin: EdgeInsets.only(left: 20),            width: MediaQuery.of(context).size.width,            child: Card(              margin: EdgeInsets.zero,              shape: RoundedRectangleBorder(                borderRadius: BorderRadius.only(                  bottomLeft: Radius.circular(12.0),                  bottomRight: Radius.circular(12.0),                ),              ),              color: Theme.of(context).cardColor,              elevation: 0.8,              child: Container(                constraints: BoxConstraints(                  maxHeight: double.infinity,                ),                margin: EdgeInsets.only(right: 16, left: 16),                child: ListView(                  physics: NeverScrollableScrollPhysics(),                  padding: EdgeInsets.only(top: 20),                  shrinkWrap: true,                  children: [                    Container(                      margin: EdgeInsets.only(bottom: 4),                      child: Row(                        crossAxisAlignment: CrossAxisAlignment.start,                        mainAxisAlignment:                            MainAxisAlignment.spaceBetween,                        children: [                          Text.rich(                            TextSpan(                              children: [                                WidgetSpan(                                  child: Container(                                    margin:                                        EdgeInsets.only(right: 8.0),                                    width: 20,                                    height: 20,                                    decoration: new BoxDecoration(                                      borderRadius:                                          BorderRadius.circular(100),                                      image: new DecorationImage(                                        image:                                            CachedNetworkImageProvider(                                          // ApiRoutes.postImageUrl + 'https://naijacrawl.com/logo/logo.webp',                                          'https://naijacrawl.com/logo/logo.webp',                                          scale: 1.0,                                        ),                                        fit: BoxFit.fill,                                      ),                                    ),                                  ),                                ),                                TextSpan(                                  text: "Albert Flores",                                  style: TextStyle(                                      fontSize: 16,                                      color: Theme.of(context)                                          .highlightColor),                                ),                              ],                            ),                          ),                          Text(                            "3 mins ago",                            // style:                                // Theme.of(context).textTheme.headline3,                          ),                        ],                      ),                    ),                    Text(                      "kizLorem ipsum dolor sit amet, consectetur lit ut... Lorem ipsum dolor sit ",                      style: TextStyle(                          fontSize: 14,                          color: Theme.of(context).disabledColor),                      textAlign: TextAlign.left,                    ),                    Container(                      margin: EdgeInsets.only(bottom: 10, top: 10),                      child: Row(                        mainAxisAlignment:                            MainAxisAlignment.spaceBetween,                        children: [                          Text(                            '6 replies',                            // style:                                // Theme.of(context).textTheme.headline3,                          ),                          Text.rich(                            TextSpan(                              style:                                  Theme.of(context).textTheme.button,                              children: [                                WidgetSpan(                                  child: Container(                                    padding:                                        EdgeInsets.only(right: 2.0),                                    child: Icon(                                      Icons.thumb_down,                                      size: 15.0,                                      color: Colors.red,                                    ),                                  ),                                ),                                TextSpan(                                    text: "3",                                    style: TextStyle(                                        fontSize: 14,                                        color: Colors.red)),                              ],                            ),                          ),                          Text.rich(                            TextSpan(                              style:                                  Theme.of(context).textTheme.button,                              children: [                                WidgetSpan(                                  child: Container(                                    padding:                                        EdgeInsets.only(right: 2.0),                                    child: Icon(                                      Icons.thumb_up,                                      size: 15.0,                                      color: Theme.of(context)                                          .buttonColor,                                    ),                                  ),                                ),                                TextSpan(                                    text: "3",                                    style: TextStyle(                                        fontSize: 14,                                        color: Theme.of(context)                                            .buttonColor)),                              ],                            ),                          ),                          Text.rich(                            TextSpan(                              style:                                  Theme.of(context).textTheme.button,                              children: [                                WidgetSpan(                                  child: Container(                                    padding:                                        EdgeInsets.only(right: 2.0),                                    child: Icon(                                      Icons.reply,                                      size: 15.0,                                      color: Colors.blue,                                    ),                                  ),                                ),                                TextSpan(                                    text: "Reply",                                    style: TextStyle(                                        fontSize: 14,                                        color: Colors.blue)),                              ],                            ),                          ),                        ],                      ),                    ),                  ],                ),              ),            ),          ),        //endchild comment        SizedBox(          height: 15,        ),        Card(          margin: EdgeInsets.zero,          shape: RoundedRectangleBorder(            borderRadius: BorderRadius.only(              topLeft: Radius.circular(12.0),              topRight: Radius.circular(12.0),            ),          ),          color: Theme.of(context).cardColor,          elevation: 0.8,          child: Container(            constraints: BoxConstraints(              maxHeight: double.infinity,            ),            margin: EdgeInsets.only(right: 16, left: 16),            child: ListView(              physics: NeverScrollableScrollPhysics(),              padding: EdgeInsets.only(top: 20),              shrinkWrap: true,              children: [                Container(                  margin: EdgeInsets.only(bottom: 4),                  child: Row(                    crossAxisAlignment: CrossAxisAlignment.start,                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                    children: [                      Text.rich(                        TextSpan(                          children: [                            WidgetSpan(                              child: Container(                                margin: EdgeInsets.only(right: 8.0),                                width: 20,                                height: 20,                                decoration: new BoxDecoration(                                  borderRadius:                                      BorderRadius.circular(100),                                  image: new DecorationImage(                                    image: CachedNetworkImageProvider(                                      // ApiRoutes.postImageUrl + 'https://naijacrawl.com/logo/logo.webp',                                      'https://naijacrawl.com/logo/logo.webp',                                      scale: 1.0,                                    ),                                    fit: BoxFit.fill,                                  ),                                ),                              ),                            ),                            TextSpan(                              text: "Albert Flores",                              style: TextStyle(                                  fontSize: 16,                                  color: Theme.of(context)                                      .highlightColor),                            ),                          ],                        ),                      ),                      Text(                        "3 mins ago",                        // // style: Theme.of(context).textTheme.headline3,                      ),                    ],                  ),                ),                Text(                  "kizLorem ipsum dolor sit amet, consectetur lit ut... Lorem ipsum dolor sit ",                  style: TextStyle(                      fontSize: 14,                      color: Theme.of(context).disabledColor),                  textAlign: TextAlign.left,                ),                Container(                  margin: EdgeInsets.only(bottom: 10, top: 10),                  child: Row(                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                    children: [                      Text(                        '6 replies',                        // // style: Theme.of(context).textTheme.headline3,                      ),                      Text.rich(                        TextSpan(                          style: Theme.of(context).textTheme.button,                          children: [                            WidgetSpan(                              child: Container(                                padding: EdgeInsets.only(right: 2.0),                                child: Icon(                                  Icons.thumb_down,                                  size: 15.0,                                  color: Colors.red,                                ),                              ),                            ),                            TextSpan(                                text: "3",                                style: TextStyle(                                    fontSize: 14, color: Colors.red)),                          ],                        ),                      ),                      Text.rich(                        TextSpan(                          style: Theme.of(context).textTheme.button,                          children: [                            WidgetSpan(                              child: Container(                                padding: EdgeInsets.only(right: 2.0),                                child: Icon(                                  Icons.thumb_up,                                  size: 15.0,                                  color:                                      Theme.of(context).buttonColor,                                ),                              ),                            ),                            TextSpan(                                text: "3",                                style: TextStyle(                                    fontSize: 14,                                    color: Theme.of(context)                                        .buttonColor)),                          ],                        ),                      ),                      Text.rich(                        TextSpan(                          style: Theme.of(context).textTheme.button,                          children: [                            WidgetSpan(                              child: Container(                                padding: EdgeInsets.only(right: 2.0),                                child: Icon(                                  Icons.reply,                                  size: 15.0,                                  color: Colors.blue,                                ),                              ),                            ),                            TextSpan(                                text: "Reply",                                style: TextStyle(                                    fontSize: 14,                                    color: Colors.blue)),                          ],                        ),                      ),                    ],                  ),                ),              ],            ),          ),        ),      ],    );  }}