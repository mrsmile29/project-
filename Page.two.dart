import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'compute with us',
      theme: ThemeData(primaryColor: Colors.purple),
      home: BRPCalculator1(),
      debugShowCheckedModeBanner: false,
    ));

class BRPCalculator1 extends StatefulWidget {
  @override
  _BRPCalculatorState createState() => _BRPCalculatorState();
}

class _BRPCalculatorState extends State<BRPCalculator1> {
  var _operation = [
    'multiplication',
  ];
  var _values = "multiply";
  var _displayText = "";

  TextEditingController textBox1 = TextEditingController();
  TextEditingController textBox2 = TextEditingController();
  TextEditingController textBox3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('compute with us '),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.black87],
            )),
          ),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Text(
                'equation of state =  air density*gas constant*temperature',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
              RaisedButton(
                  child: Text(
                    'equation of state = ρ*R*T ',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                    ),
                  ),
                  color: Colors.blue[100],
                  onPressed: () {}),

              // First Item

              SizedBox(
                height: 25,
              ),

              // Second Item
              TextField(
                controller: textBox1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "air density",
                    hintText: "enter the value of air density",
                    labelStyle: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                textDirection: TextDirection.ltr,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5),
              ),
              SizedBox(
                height: 25,
              ),
              // Third Item
              TextField(
                controller: textBox2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "gas constant",
                    hintText: "enter the value of gas constant in J",
                    labelStyle: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                textDirection: TextDirection.ltr,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                controller: textBox3,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "temperature",
                    hintText: "enter the value of temperature in K",
                    labelStyle: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                textDirection: TextDirection.ltr,
              ),
              SizedBox(
                height: 25,
              ),

              // Forth Item
              Text(
                _displayText,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 25,
              ),
              // Fifth Item
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        'Compute',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                        ),
                      ),
                      textColor: Colors.black87,
                      splashColor: Colors.orange,
                      padding: EdgeInsets.all(20.0),
                      onPressed: () {
                        setState(() {
                          double first = double.parse(textBox1.text);
                          double second = double.parse(textBox2.text);
                          double third = double.parse(textBox3.text);
                          switch (_values) {
                            case "multiply":
                              var mul = first * second * third;
                              _displayText = "the equation of state = " +
                                  mul.toStringAsFixed(0);

                              break;
                            default:
                              _displayText = "only multiplication required";
                          }
                        });
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }

  void _clearAll() {
    textBox1.text = "";
    textBox2.text = "";
  }

  void _calcuateResult(value) {}
}
