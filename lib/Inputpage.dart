import 'package:bmi/Secondpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Reusablecard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Secondpage.dart';
import 'brain.dart';
const Color activecolour=Color(0xFF323244);
const Color inactivecolour=Color(0xFF24263B);

int height=180;
int weight=40;
int age=18;
class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Color malecol=activecolour;
  Color femalecol=activecolour;
  void updatecolour(int gender){
    if(gender==1){
      if(malecol==activecolour){
        malecol=inactivecolour;
        femalecol=activecolour;
      }
      else{
        malecol=activecolour;
      }
    }
    if(gender==2){
      if(femalecol==activecolour){
        femalecol=inactivecolour;
        malecol=activecolour;
      }
      else{
        malecol=activecolour;
      }
    }
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xFF1D2136),
      appBar: AppBar(
        title: Center(child: Text('BMI calculator')),
        backgroundColor: Color(0xFF1D2136),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    updatecolour(1);
                  });

                },
                child: Reusablecard(colour: malecol,
                  cardchild: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Icon(FontAwesomeIcons.mars,size: 100.0,color: Colors.lightBlue,),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text("MALE",style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  ),

                ),
              )),
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    updatecolour(2);
                  });
                },
                child: Reusablecard(colour: femalecol,
                  cardchild: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Icon(FontAwesomeIcons.venus,size: 100.0,color: Colors.pinkAccent,),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text("FEMALE",style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  ),),
              )),
            ],
          )),
          Expanded(child:Reusablecard(colour: activecolour,cardchild: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('HEIGHT',style: TextStyle(fontSize: 20)),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: <Widget>[

                  Text(height.toString(),style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900)),
                  Text('cm')
                ],),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: Colors.orangeAccent,
                    activeTrackColor: Colors.teal,
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 15.0
                    ),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                  ),
                  child: Slider(value: height.toDouble(),
                    min: 120,max: 220,
                    inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newval){
                    setState(() {
                      height=newval.round();
                    });

                  },),
                )
                
                

              ],
            ),)),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child:
              Reusablecard(colour: activecolour,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('WEIGHT',style: TextStyle(fontSize: 20)),
                  Text(weight.toString(),style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FloatingActionButton(backgroundColor: Color(0xFF4C4F5E),
                      onPressed: (){
                        setState(() {
                          weight++;
                        });
                      },
                        heroTag: "btn1",
                      child: Icon(Icons.add,color: Colors.white,),),
                      SizedBox(width: 24,),
                      FloatingActionButton(backgroundColor: Color(0xFF4C4F5E),
                        onPressed: (){
                        setState(() {
                          weight--;
                        });
                        },
                        heroTag: "btn2",
                        child: Icon(Icons.remove,color: Colors.white,),),

                    ],
                  )
                ],
              ),),),

              Expanded(child: Reusablecard(colour: activecolour,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('AGE',style: TextStyle(fontSize: 20)),
                      Text(age.toString(),style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(backgroundColor: Color(0xFF4C4F5E),
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                            heroTag: "btn3",
                            child: Icon(Icons.add,color: Colors.white,),),
                          SizedBox(width: 24,),
                          FloatingActionButton(backgroundColor: Color(0xFF4C4F5E),
                            onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                            heroTag: "btn4",
                            child: Icon(Icons.remove,color: Colors.white,),),

                        ],
                      )
                    ],
                  ))),
            ],
          )),
          GestureDetector(
            onTap: (){
              brain br=new brain(hheight: height,wweight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context) => results(bmiI: br.calculateBMI(),answerI: br.answer())));
            },
              child:
              Container(

                  child:Center(child: Text('CALCULATE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),height: 50,width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.pink)))
        ],
      )
    );
  }
}

