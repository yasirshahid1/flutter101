import 'package:flutter/material.dart';
import 'package:flutter_complete_guide3/screen/popup.dart';

class cont extends StatelessWidget {
  cont(Login login);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            margin: EdgeInsets.only(
                top: 140.0, bottom: 140.0, left: 80.0, right: 80.0),
            padding: EdgeInsets.only(top: 40.0, left: 20.0),
            alignment: Alignment.center,
            color: Colors.amberAccent,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "User Id",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Password",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
                // Images(),
                Login()
              ],
            )));
  }
}

//class Images extends StatelessWidget {
//@override
// Widget build(BuildContext context) {
//  AssetImage assetImage = AssetImage('images/panda.gif');
// Image image = Image(image: assetImage);
// return Container(
//    child: image,
//  );
// }
//}
