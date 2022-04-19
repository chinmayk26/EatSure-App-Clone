import 'package:flutter1/Checkoutpage.dart';
import 'package:flutter1/besure.dart';
import 'package:flutter1/homepage.dart';
import 'package:flutter1/login.dart';
import 'package:flutter1/profilepage.dart';
import 'package:flutter1/searchpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp
    (
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'EatSure',
      theme: ThemeData.light(),
      home: MyBottomNavigationBar(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => HomePage(),
      //   '/login': (context) => LoginPage(),
      // },
    );
  }
}



class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}



class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    ProfilePage(),
    BeSurePage(),
    SearchPage(),
    CheckoutPage(),
  ];

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar
        (
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items:
        [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home')
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: Text('Profile')
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.shield),
              title: new Text('BeSure')
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: new Text('Search')
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.shopping_cart),
              title: new Text('Checkout')
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

