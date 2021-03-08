import 'package:bmi_app/Bottom_Button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app/Constans.dart';
import 'package:bmi_app/Reuse_Card.dart';

class ResultsPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;
  final String interpretaion;

  ResultsPage({@required this.resultText,@required this.bmiResult, @required this.interpretaion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: Text(
                'Your Result',
                style: KtitleTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReuseCard(
                colour: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment : CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(bmiResult,style: KBMITextstyle ,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(interpretaion,style: kBodyTextStyle,textAlign: TextAlign.center,

                      ),
                    ) ,
                    BottomButton( buttonTitle: 'RE CALCULATE', ontap: (){
                      Navigator.pop(context);
                    })
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
