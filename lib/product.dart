import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Product Page'),
      ),
      body: SingleChildScrollView(
        child:Container(
          child:Column(
            children: [
              Container(
                // height:600,
                // color: Colors.greenAccent,
                child: Image.asset('images/Chickenwrap.jpg'),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top:10, right: 10, bottom:10),
                height:240,
                // color: Colors.black,
                child: Column(
                  children: <Widget>[
                    Text('Barbeque Chicken Wrap (ES Exclusive)                                     ',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 21, color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 0, top:15, right: 0, bottom:20),
                      child: Row(
                        children: [
                          Text("Non-VEG  ", style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                          Text('₹99                                    Earn upto 271 sure pts'),
                        ],
                      ),
                    ),
                    Text('50% off upto ₹100 | Use code-FIRSTBITE                              '),
                    Text("view details                                                                               ", style: TextStyle(color: Colors.blueAccent)),
                    Container(
                      padding: EdgeInsets.only(left: 0, top:25, right: 0, bottom:4),
                      child: Row(
                        children: [
                          Container(
                            width: 180,
                            color: Colors.greenAccent,
                            child:
                          Text("₹ Prices Inclusive of taxes",style: TextStyle(color: Colors.red,)),
                          ),

                Container(
                  padding: EdgeInsets.only(left: 75, top:0, right: 0, bottom:0),
                  child:    FlatButton(
                              child: Text('ADD TO CART', style: TextStyle(fontSize: 15.0),),
                              color: Colors.indigoAccent,
                              height: 35,
                              minWidth: 80,
                              textColor: Colors.white,
                              onPressed: (){}
                          ),
                ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                width: 400,
                color: Colors.grey,
              ),
              Container(
                height:545,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 0, top:20, right: 225, bottom:0),
                      child:Text('Know Your Dish',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 21, color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),
                ),
                    ),
                Container(
                  padding: EdgeInsets.only(left: 13, top:10, right: 0, bottom:20),
                  child:
                Text('Craving for something new? We got your back Chunks of Chicken cooked in reshmi masala, topped with sinful cheese into a soft roti. Roll up your sleeves, its snack time!',),
                ),
                    Container(
                      height: 2,
                      width: 400,
                      color: Colors.grey,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 0, top:10, right: 225, bottom:15),
                      child:Text('Key Ingredients',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 21, color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),
                      ),
                    ),

                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            height:170,
                            width: 137,
                            child:
                            Card(
                              child: Column(
                                children:<Widget>[
                                  Image(
                                    image: new AssetImage('images/corn.png'),
                                  ),
                                  Text('American Corn')
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height:170,
                            width: 137,
                            child:
                            Card(
                              child: Column(
                                children:<Widget>[
                                  Image(
                                    image: new AssetImage('images/cream.png'),
                                  ),
                                  Text('Fresh Cream')
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height:170,
                            width: 137,
                            child:
                            Card(
                              child: Column(
                                children:<Widget>[
                                  Image(
                                    image: new AssetImage('images/onion.png'),
                                  ),
                                  Text('Red Onion')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            height:170,
                            width: 137,
                            child:
                            Card(
                              child: Column(
                                children:<Widget>[
                                  Image(
                                    image: new AssetImage('images/flour.png'),
                                  ),
                                  Text('Wheat Flour')
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height:170,
                            width: 137,
                            child:
                            Card(
                              child: Column(
                                children:<Widget>[
                                  Image(
                                    image: new AssetImage('images/chicken.png'),
                                  ),
                                  Text('Juicy Chicken')
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height:170,
                            width: 137,
                            child:
                            Card(
                              child: Column(
                                children:<Widget>[
                                  Image(
                                    image: new AssetImage('images/oil.png'),
                                  ),
                                  Text('Vegetable Oil')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                width: 400,
                color: Colors.grey,
              ),
              Container(
                height:220,
                // color: Colors.yellowAccent,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, top:10, right: 285, bottom:10),
                      child:Text('Sure Trivia',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 21, color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 13, top:10, right: 0, bottom:20),
                      child:
                      Text('Chicken boosts immunity. Cheese improves brain functions',),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 0, top:10, right: 280, bottom:0),
                      child:
                      Text('Did You Know?',),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 13, top:0, right: 0, bottom:20),
                      child:
                      Text('Chicken is the true all rounder! The Human Body can derive about 30 different nutritional elements with just 100 grams of Chicken!',),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                width: 400,
                color: Colors.grey,
              ),
              Container(
                height:500,
                // color: Colors.red,
                child: Column(
                  children:[
                    Container(
                      padding: EdgeInsets.only(left: 10, top:10, right: 240, bottom:10),
                      child:Text('Nutrition Facts',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 21, color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 437,
                      padding: EdgeInsets.only(left: 10, top:10, right: 10, bottom:0),
                      // color: Colors.red,
                      child:
                      Column(
                        children:
                        [
                          ListTile(
                            leading:
                            Text(
                              'Calories                               650Kcal',
                              style: TextStyle(fontSize: 21),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Text("-------------------------------------------------------------------------------------"),
                          ListTile(
                            leading:
                            Text(
                              'Carb                                           57g',
                              style: TextStyle(fontSize: 21),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Text("-------------------------------------------------------------------------------------"),
                          ListTile(
                            leading:
                            Text(
                              'Protein                                          23g',
                              style: TextStyle(fontSize: 21),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Text("-------------------------------------------------------------------------------------"),
                          ListTile(
                            leading:
                            Text(
                              'Fat                                  37g',
                              style: TextStyle(fontSize: 21),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Text("-------------------------------------------------------------------------------------"),

                          Container(
                            padding: EdgeInsets.only(left: 13, top:10, right: 0, bottom:20),
                            child:
                            Text('The nutritional information mentioned is to the best  of our knowledge and has been calculated basis approved institutional food charts but there maybe slight deviations at certain times due to operational practices.',),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 400,
                      color: Colors.grey,
                    ),
                  ]
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
