import 'package:flutter/material.dart';


class results extends StatelessWidget {
  results({@required this.bmiI,@required this.answerI});
  final String bmiI;
  final String answerI;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D2136),
    appBar: AppBar(title: Center(child: Text('BMI calculator')),
      backgroundColor: Color(0xFF1D2136)),
      body: Column(

        children: <Widget>[
          Text('Your Result',style: TextStyle(fontSize: 60.0,fontWeight: FontWeight.bold,color: Colors.white),),
          Expanded(
            flex: 5,
            child: Container(

                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Color(0xFF323244),),
                margin: EdgeInsets.all(40.0),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(


                        children: <Widget>[
                          Text("below 18.5 – you're in the underweight range.".toUpperCase()),
                          Text(""),
                          Text("between 18.5 and 25 – you're in the healthy weight range.".toUpperCase()),
                          Text(""),
                          Text("above 25 – you're in the overweight range".toUpperCase()),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(answerI,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400)),
                    ),
                    Text(bmiI,style: TextStyle(fontSize: 100.0),),

                  ],
                )
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
                child:Center(child: Text('RE-CALCULATE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),height: 50,width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.pink)),
          )

        ],

      ),

    );
  }
}
