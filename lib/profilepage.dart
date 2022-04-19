import 'package:flutter1/login.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Profile Page'),
      ),
      body:
      Column(
      children:[
        Container(
          height: 180,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          // color: Colors.green,
          child: Row(
            children: <Widget>[ CircleAvatar(
              radius: 50,
            backgroundImage: AssetImage('images/person.png'),
            ),
              Container(
                  width: 291,
                  padding: EdgeInsets.only(left: 20, top:30, right: 20, bottom:0),
                  child: Column(
                    children:<Widget> [
                      Text('Hi Guest', style: TextStyle(fontSize: 21),textAlign: TextAlign.left),
                      Text('Login/Create Account quickly manage orders', style: TextStyle(fontSize: 15),textAlign: TextAlign.left),
                      ElevatedButton(
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent, // Background color
                        ),
                        child: const Text('Login'),
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),


        Container(
          height: 275,
          margin: EdgeInsets.all(10),
          // color: Colors.red,
          child:
          Column(
            children:
            [
              ListTile(
                leading:
                Text(
                  'Sure Points',
                  style: TextStyle(fontSize: 21),
                  textAlign: TextAlign.left,
                ),
              ),
              ListTile(
                leading:
                Text(
                  'About EatSure',
                  style: TextStyle(fontSize: 21),
                  textAlign: TextAlign.left,
                ),
              ),
              ListTile(
                leading:
                Text(
                  'FAQ',
                  style: TextStyle(fontSize: 21),
                  textAlign: TextAlign.left,
                ),
              ),
              ListTile(
                leading:
                Text(
                  'Terms & Conditions',
                  style: TextStyle(fontSize: 21),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        )
      ]
      )
    );
  }
}
