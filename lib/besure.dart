import 'package:flutter/material.dart';

class BeSurePage extends StatefulWidget {
  const BeSurePage({Key? key}) : super(key: key);

  @override
  _BeSurePageState createState() => _BeSurePageState();
}

class _BeSurePageState extends State<BeSurePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('BeSure Page'),
      ),
      body: SingleChildScrollView(
        child:Container(
          child:Column(
            children: [
              Container(
                child: Image.asset('images/banner1.jpg'),
              ),
              Container(
                child: Image.asset('images/banner3.jpg'),
              ),
              Container(
                child: Image.asset('images/banner2.jpg'),
              )
            ],
          ),
        ),
      )
    );
  }
}
