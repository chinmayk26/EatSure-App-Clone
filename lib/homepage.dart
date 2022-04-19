import 'package:flutter1/login.dart';
import 'package:flutter1/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class CardItem{
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}

class CardItem1{
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem1({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<CardItem> items =[
    CardItem(
      urlImage:'https://media.istockphoto.com/photos/dner-kebap-chicken-salad-sandwich-wrap-picture-id168663653?b=1&k=20&m=168663653&s=170667a&w=0&h=C4keA1DeTXtBUiJZnnYobEOAgJI2ViuQiLksIG_wYCQ=',
      title: 'Barbeque Chicken Wrap (ES Exclusive)',
      subtitle: '\₹99',
    ),
    CardItem(
      urlImage:'https://media.istockphoto.com/photos/indian-veg-chapati-wrap-picture-id1341890697?s=612x612',
      title: 'Masala Paneer Tikka Wrap (ES Exclusive)',
      subtitle: '\₹99',
    ),
    CardItem(
      urlImage:'https://media.istockphoto.com/photos/dner-kebap-chicken-salad-sandwich-wrap-picture-id168663653?s=612x612',
      title: 'Reshmi chicken kabab wrap (ES Exclusive)',
      subtitle: '\₹99',
    ),
    CardItem(
      urlImage:'https://media.istockphoto.com/photos/cut-indian-wrap-with-chicken-meat-and-garam-masala-picture-id479436972?s=612x612',
      title: 'Masala Chicken Tikka Wrap (ES Exclusive)',
      subtitle: '\₹99',
    ), CardItem(
      urlImage:'https://media.istockphoto.com/photos/front-view-of-delicious-tuna-carrot-and-cheese-wrap-isolated-picture-id1334690823?s=612x612',
      title: 'Cheese Melt Paneer Wrap (ES Exclusive)',
      subtitle: '\₹99',
    ),
    CardItem(
      urlImage:'https://media.istockphoto.com/photos/healthy-packed-lunch-picture-id157644048?b=1&k=20&m=157644048&s=170667a&w=0&h=YJ9mhDIrWkqZZtUd8xh37cCclkX-mzfrnVyAOdRbNkI=',
      title: 'Cheese Melt Chicken Wrap (ES Exclusive)',
      subtitle: '\₹99',
    ),
  ];

  List<CardItem> items1 =[
    CardItem(
      urlImage:'https://media.istockphoto.com/photos/image-of-indian-breakfast-dish-buffet-slices-of-aloo-parathas-with-picture-id1224537560?s=612x612',
      title: 'Aloo Paratha Chole And Curd Lunchbox',
      subtitle: '\₹209',
    ),
    CardItem(
      urlImage:'https://media.istockphoto.com/photos/aloo-paratha-with-lassi-indian-potato-stuffed-flatbread-with-butter-picture-id1189079893?s=612x612',
      title: 'Aloo Paratha With Dal Makhani',
      subtitle: '\₹188',
    ),
    CardItem(
      urlImage:'https://media.istockphoto.com/photos/masala-omelette-and-parathas-picture-id1279356858?s=612x612',
      title: 'Double Omelette With Masala Bread',
      subtitle: '\₹141',
    ),
    CardItem(
      urlImage:'https://media.istockphoto.com/photos/three-cupcakes-picture-id183060524?s=612x612',
      title: '3 CupCakes',
      subtitle: '\₹349',
    ), CardItem(
      urlImage:'https://media.istockphoto.com/photos/olivier-russian-salad-decorated-with-herb-and-eggs-picture-id508128578?s=612x612',
      title: 'Olivier Russian Salad',
      subtitle: '\₹345',
    ),
    CardItem(
      urlImage:'https://media.istockphoto.com/photos/mango-lassi-in-glasses-picture-id908734588?s=612x612',
      title: '2 Mango Lassi',
      subtitle: '\₹175',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Eatsure Home Page'),
        actions: <Widget>[ IconButton (
          icon: Icon(Icons.person),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginPage();
            }));
          },
        ),
        ],
      ),
      body:SingleChildScrollView(
          child:Container(
            child:  Column(
              children:[
                Text('Happy Hours-Save up to 50%                                      ', textAlign: TextAlign.left ,style: TextStyle(fontSize:  15, color: Colors.black,fontWeight: FontWeight.bold)),

                Container(
                  height: 275,
                  margin: EdgeInsets.all(20),

                  child:
                  ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    separatorBuilder: (context, _) => SizedBox(width: 12),
                    itemBuilder: (context, index) => buildCard(item: items[index]),

                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent, // Background color
                  ),
                  child: const Text('View'),
                ),
                new Text('Breakfast                                                                       ', textAlign: TextAlign.left ,style: TextStyle(fontSize:  15, color: Colors.black,fontWeight: FontWeight.bold)),
                Container(
                  height: 275,
                  margin: EdgeInsets.all(20),
                  child:
                  ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    separatorBuilder: (context, _) => SizedBox(width: 12),
                    itemBuilder: (context, index) => buildCard1(item: items1[index]),
                  ),
                ),
                new Text('Breakfast                                                                       ', textAlign: TextAlign.left ,style: TextStyle(fontSize:  15, color: Colors.black,fontWeight: FontWeight.bold)),
                Container(
                  height: 275,
                  margin: EdgeInsets.all(20),
                  child:
                  ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    separatorBuilder: (context, _) => SizedBox(width: 12),
                    itemBuilder: (context, index) => buildCard1(item: items1[index]),
                  ),
                ),
                new Text('Breakfast                                                                       ', textAlign: TextAlign.left ,style: TextStyle(fontSize:  15, color: Colors.black,fontWeight: FontWeight.bold)),
                Container(
                  height: 275,
                  margin: EdgeInsets.all(20),
                  child:
                  ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    separatorBuilder: (context, _) => SizedBox(width: 12),
                    itemBuilder: (context, index) => buildCard1(item: items1[index]),
                  ),
                ),
              ],
            ),
          ),
      ),

    );
  }
  Widget buildCard({
    required CardItem item,
  }
      ) => Container(
    width: 250,
    child: Column(
      children: [
        Expanded(child: AspectRatio(
          aspectRatio: 4/3,
          child: Image.network(item.urlImage, fit: BoxFit.cover,),
        ),
        ),
        const SizedBox(height: 4),
        Text(item.title,
          style: TextStyle(fontSize:  18, fontWeight: FontWeight.bold),
        ),
        Text(item.subtitle,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize:  15, color: Colors.black,),
        ),
      ],
    ),
  );

  Widget buildCard1({
    required CardItem item,
  }
      ) => Container(
    width: 250,
    child: Column(
      children: [
        Expanded(child: AspectRatio(
          aspectRatio: 4/3,
          child: Image.network(item.urlImage, fit: BoxFit.cover,),
        ),
        ),
        const SizedBox(height: 4),
        Text(item.title,
          style: TextStyle(fontSize:  18, fontWeight: FontWeight.bold),
        ),
        Text(item.subtitle,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize:  15, color: Colors.black,),
        ),
      ],
    ),
  );
}
