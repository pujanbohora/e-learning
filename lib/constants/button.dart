
import 'package:elearning/constants/colors.dart';
import 'package:flutter/material.dart';

ButtonStyle primaryButton =  ButtonStyle(
  elevation: MaterialStateProperty.all<double>(0),
  backgroundColor: MaterialStateProperty.all<Color>(primary_1),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)),
  ),
  textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
    color: gray_900,
    fontWeight: FontWeight.w600,
  )),
);


ButtonStyle primaryButtonOutline =  ButtonStyle(
  elevation: MaterialStateProperty.all<double>(0),
  backgroundColor: MaterialStateProperty.all<Color>(default_background),
  foregroundColor: MaterialStateProperty.all<Color>(primary_1),
  side: MaterialStateProperty.all<BorderSide>(const BorderSide(width: 2, color: primary_1)),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)),
  ),
  textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
    color: primary_1,
    fontWeight: FontWeight.w600,
  )),
);

ButtonStyle lightButton =  ButtonStyle(
  elevation: MaterialStateProperty.all<double>(0),
  backgroundColor: MaterialStateProperty.all<Color>(primary_1.withOpacity(0.4)),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)),
  ),
  textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
    color: gray_900,
    fontWeight: FontWeight.w600,
  )),
);


ButtonStyle activeButton =  ButtonStyle(
  elevation: MaterialStateProperty.all<double>(0),
  backgroundColor: MaterialStateProperty.all<Color>(primary_2),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)),
  ),
  textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
    color: gray_900,
    fontWeight: FontWeight.w600,
  )),
);

ButtonStyle defaultButton =  ButtonStyle(
  elevation: MaterialStateProperty.all<double>(0),
  backgroundColor: MaterialStateProperty.all<Color>(gray_500),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)),
  ),
  textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
    color: gray_900,
    fontWeight: FontWeight.w600,
  )),
);

ButtonStyle secondaryButton =  ButtonStyle(
  elevation: MaterialStateProperty.all<double>(0),
  backgroundColor: MaterialStateProperty.all<Color>(gray_900),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)),
  ),
  textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
  )),
);

ButtonStyle secondaryButtonOutline =  ButtonStyle(
  elevation: MaterialStateProperty.all<double>(0),
  backgroundColor: MaterialStateProperty.all<Color>(default_background),
  foregroundColor: MaterialStateProperty.all<Color>(gray_900),
  side: MaterialStateProperty.all<BorderSide>(const BorderSide(width: 2, color: gray_900)),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)),
  ),
  textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
    color: gray_900,
    fontWeight: FontWeight.w600,
  )),
);
