import 'package:bmi_app/Input_Page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app/Constans.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.ontap, this.buttonTitle});

  final Function ontap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
            child: Text(
              buttonTitle,
              style: kLargeButtonTextStyle,
            )),
        color: kbottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}
