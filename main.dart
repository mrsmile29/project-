import 'package:flutter/material.dart';
import 'package:project_1/Page.two.dart';
import 'package:project_1/page.five.dart';
import 'package:project_1/page.four.dart';
import 'package:project_1/page.one.dart';
import 'package:project_1/page.three.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeRoute(),
      '/second': (context) => SecondRoute(),
      '/third': (context) => ThirdRoute(),
      '/fourth': (context) => fourthRoute(),
      '/fifth': (context) => fifthRoute(),
      '/sixth': (context) => sixthRoute()
    },
  ));
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FORMULAS'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [Icon(Icons.notification_add)],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.black],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.indigo[100],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('Reynolds number'),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
          RaisedButton(
            child: Text('Equation Of state'),
            onPressed: () {
              Navigator.pushNamed(context, '/fourth');
            },
          ),
          RaisedButton(
            child: Text('Aspect Ratio'),
            onPressed: () {
              Navigator.pushNamed(context, '/fifth');
            },
          ),
          RaisedButton(
            child: Text('Absolute pressure'),
            onPressed: () {
              Navigator.pushNamed(context, '/sixth');
            },
          ),
          RaisedButton(
            child: Text('machnumber'),
            onPressed: () {
              Navigator.pushNamed(context, '/third');
            },
          ),
        ],
      )),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reynolds number'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [Icon(Icons.notification_add)],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.black],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.indigo[100],
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => BRPCalculator2()));
          },
          child: Text('NEXT'),
          splashColor: Colors.orange,
        ),
      ),
    );
  }
}

class fourthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Equation of state"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [Icon(Icons.notification_add)],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.black],
            ),
          ),
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => BRPCalculator1()));
          },
          child: Text('NEXT'),
          splashColor: Colors.orange,
        ),
      ),
      backgroundColor: Colors.indigo[100],
    );
  }
}

class fifthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aspect Ratio"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [Icon(Icons.notification_add)],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.black],
            ),
          ),
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => BRPCalculator3()));
          },
          child: Text('NEXT'),
          splashColor: Colors.orange,
        ),
      ),
      backgroundColor: Colors.indigo[100],
    );
  }
}

class sixthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abosulute pressure"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [Icon(Icons.notification_add)],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.black],
            ),
          ),
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => BRPCalculator4()));
          },
          child: Text('NEXT'),
          splashColor: Colors.orange,
        ),
      ),
      backgroundColor: Colors.indigo[100],
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("mach number"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [Icon(Icons.notification_add)],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.black],
            ),
          ),
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => BRPCalculator()));
          },
          child: Text('Next'),
          splashColor: Colors.orange,
        ),
      ),
      backgroundColor: Colors.indigo[100],
    );
  }
}
