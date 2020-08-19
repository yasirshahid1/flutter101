import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './screen/model.dart';
import './screen/submit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: reg());
  }
}

class reg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _regstate();
  }
}

class _regstate extends State<reg> {
  final _regkey = GlobalKey<FormState>();
  Model model = Model();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
      ),
      body: Form(
        key: _regkey,
        child: Column(
          children: <Widget>[
            Image.network(
              'https://spiderimg.amarujala.com/assets/images/2018/10/05/750x506/jee-main-2019_1538716461.jpeg',
              width: 440,
              height: 200,
              fit: BoxFit.fitWidth,
            ),
            Container(
              alignment: Alignment.topCenter,
              child: regtext(
                hintText: "First Name",
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Enter your name";
                  }
                  return null;
                },
                onSaved: (String value) {
                  model.firstName = value;
                },
              ),
            ),
            RaisedButton(
              color: Colors.blueAccent,
              onPressed: () {
                if (_regkey.currentState.validate()) {
                  _regkey.currentState.save();

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Result(model: this.model)));
                }
              },
              child: Text("Submit Form", style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}

class regtext extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  regtext({
    this.hintText,
    this.validator,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all((8.0)),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        validator: validator,
        onSaved: onSaved,
      ),
    );
  }
}
