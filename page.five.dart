import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'compute with us',
      theme: ThemeData(primaryColor: Colors.purple),
      home: BRPCalculator4(),
      debugShowCheckedModeBanner: false,
    ));

class BRPCalculator4 extends StatefulWidget {
  @override
  _BRPCalculator4State createState() => _BRPCalculator4State();
}

class _BRPCalculator4State extends State<BRPCalculator4> {
  var _operation = [
    'multiplication',
  ];
  var _values = "multiply";
  var _displayText = "";

  TextEditingController textBox1 = TextEditingController();
  TextEditingController textBox2 = TextEditingController();

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
                'absolute pressure = gauge pressure + atmospheric pressure',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
              RaisedButton(
                  child: Text(
                    'Pabs = Pg + Patm',
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
                    labelText: "gauge pressure ",
                    hintText: "enter the value of gauge pressure",
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
                    labelText: "atmospheric pressure ",
                    hintText: "enter the value of atmospheric pressure ",
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

                          switch (_values) {
                            case "multiply":
                              var mul = first + second;
                              _displayText = "absolute pressure = " +
                                  mul.toStringAsFixed(0);

                              break;
                            default:
                              _displayText = "only addition required";
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
