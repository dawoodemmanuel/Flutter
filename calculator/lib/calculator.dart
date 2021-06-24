import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  var result = "";

  Widget calbutton(var text, Color btnColor, Color textColor) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            setState(() {
              result = result + text;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text('${text}',
                style: TextStyle(color: textColor, fontSize: 25)),
          ),
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(), primary: btnColor)),
    );
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    
    setState(() {
      result = eval.toString();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(right: 43.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('${result}',
                        style: TextStyle(
                          fontSize: 50,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calbutton("7", Colors.purple, Colors.white),
                calbutton("8", Colors.purple, Colors.white),
                calbutton("9", Colors.purple, Colors.white),
                calbutton("/", Colors.pink, Colors.white)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calbutton("4", Colors.purple, Colors.white),
                calbutton("5", Colors.purple, Colors.white),
                calbutton("6", Colors.purple, Colors.white),
                calbutton("*", Colors.pink, Colors.white)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calbutton("1", Colors.purple, Colors.white),
                calbutton("2", Colors.purple, Colors.white),
                calbutton("3", Colors.purple, Colors.white),
                calbutton("-", Colors.pink, Colors.white)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = "";
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text('C',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(), primary: Colors.red)),
                calbutton("0", Colors.purple, Colors.white),
                ElevatedButton(
                    onPressed: output,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text('=',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(), primary: Colors.red)),
                calbutton("+", Colors.pink, Colors.white)
              ],
            )
          ],
        ),
      ),
    );
  }
}
