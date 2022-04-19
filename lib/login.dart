import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String group = 'SMS';
  String group1 = 'WhatsApp';

  // CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Eatsure Login Page'),
      ),
      body: SingleChildScrollView(
      child:Container(
        child:Column(
        children: [
          Container(
            height: 175,
            color: Colors.grey,
            width: double.infinity,
            child:
            Image.asset('images/Login.jpg'),
          ),
          Container(
            width: 500,
            height: 580,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading:
                  Radio(value: 'SMS',
                      groupValue: group,
                      onChanged: (T){
                        print(T);
                        setState(() {
                          group = "SMS";
                        });
                      }),
                  title: const Text('SMS'),
                ),
                ListTile(
                  leading:
                  Radio(value: 'Whatsapp',
                      groupValue: group1,
                      onChanged: (T){
                        print(T);
                        setState(() {
                          group1 = 'WhatsApp';
                        });
                      }),
                  title: const Text('WhatsApp'),
                ),
                Padding(padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                  child: TextFormField(
                    // onChanged: (value){
                    //   var text1 = value;
                    // },
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Phone Number',
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Please Enter a Valid Phone Number';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(10.0, 0, 0, 25.0),
                  child:
                  Text("You shall receive a 4 digit OTP number", style: TextStyle(fontSize:  10, color: Colors.black,)
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: FlatButton(
                      child: Text('Send OTP', style: TextStyle(fontSize: 20.0),),
                      color: Colors.blueAccent,
                      height: 50,
                      minWidth: 800,
                      textColor: Colors.white,
                      onPressed: (){}
                    // async{
                    // await users.add({'PhoneNo':'9876254135'}).then((value)=> print('User Added'));
                    // },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      ),
      ),
    );
  }
}
