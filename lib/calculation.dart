import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator ({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var number1, number2, result;
  TextEditingController c1= TextEditingController();
  TextEditingController c2= TextEditingController();

  void add(){
     number1= int.parse(c1.text);
     number2=int.parse(c2.text);
    setState(() {
      result= number1 + number2;
    });
  }

  void sub(){
    number1= int.tryParse(c1.text);
    number2=int.tryParse(c2.text);
    setState(() {
      result= number1 - number2;
    });
  }

  void mul(){
    number1= int.tryParse(c1.text);
    number2=int.tryParse(c2.text);
    setState(() {
      result= number1 * number2;
    });
  }

  void div(){
    number1= int.tryParse(c1.text);
    number2=int.tryParse(c2.text);
    setState(() {
      result= number1 / number2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.black,
       title:
       const Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children:[
           Icon(Icons.calculate, size: 30,color: Colors.orangeAccent),
           Text('Calculator'),
             ],
     ),
    ),
    body: Padding(
      padding: EdgeInsets.fromLTRB(10, 155, 10, 10),
          child: Column(
           children: [
             Text('Результат: ${result == null ? 0 : result}', style: TextStyle(fontSize: 30),),
             TextField(
                 decoration: InputDecoration(hintText: 'Введите первое число' ),
                 controller: c1,
                 keyboardType: TextInputType.number
              ),
             TextField(
               decoration: InputDecoration(hintText: 'Введите второе число', fillColor:Colors.green,),
               controller: c2,
               keyboardType: TextInputType.number,
             ),
          SizedBox(height: 15,) ,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             ElevatedButton(onPressed: add, child: Text('+'),  style: ElevatedButton.styleFrom(padding: EdgeInsets.fromLTRB(30, 8, 30, 8),textStyle: TextStyle(fontSize:25),backgroundColor: Colors.orangeAccent,)),
             ElevatedButton(onPressed: sub, child: Text('-'), style: ElevatedButton.styleFrom(padding: EdgeInsets.fromLTRB(30, 8, 30, 8), textStyle: TextStyle(fontSize:25),backgroundColor: Colors.orangeAccent,)),
             ElevatedButton(onPressed: mul, child: Text('*'), style: ElevatedButton.styleFrom(padding: EdgeInsets.fromLTRB(30, 8, 30, 8), textStyle: TextStyle(fontSize:25),backgroundColor: Colors.orangeAccent,)),
             ElevatedButton(onPressed: div, child: Text('/'), style: ElevatedButton.styleFrom(padding: EdgeInsets.fromLTRB(30, 8, 30, 8), textStyle: TextStyle(fontSize:25),backgroundColor: Colors.orangeAccent,)),
          ],
          ),
        ],
    ),
    )
    );
  }
}