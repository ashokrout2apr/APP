import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {

  int _moneyCounter=0;
  void _rainMoney() {
    //IMPORTANT- setState is called each time we need to update the UI.
    setState(() {
      _moneyCounter= _moneyCounter + 100;
    });

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain!"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "Payment to be made",
                style: new TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w400,
                  fontSize: 35,
                ),
              ),
            ),
            new Expanded(
              child: new Center(
                child: new Text('\$$_moneyCounter',
                  style: new TextStyle(
                    color: _moneyCounter>1000 ? Colors.green : Colors.greenAccent,
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                  ),),
              )),

            new Expanded(
                child: new Center(
                  child: new FlatButton(
                    onPressed: _rainMoney ,
                    child: new Text("Increase ",
                      style: new TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
