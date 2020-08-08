import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Discovery',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22.0),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.photo_camera),
              onPressed: () {},
              color: Colors.grey)
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        children: <Widget>[
          Container(
            height: 160.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(20.0),
              children: <Widget>[
                listItemImage('assets/model1.jpg', 'assets/logo1.jpg'),
                SizedBox(width: 30.0),
                listItemImage('assets/model2.jpg', 'assets/logo2.jpg'),
                SizedBox(width: 30.0),
                listItemImage('assets/model3.jpg', 'assets/logo3.jpg'),
                SizedBox(width: 30.0),
                listItemImage('assets/model4.jpg', 'assets/logo4.jpg'),
                SizedBox(width: 30.0),
                listItemImage('assets/model5.jpg', 'assets/logo5.png'),
                SizedBox(width: 30.0),
                listItemImage('assets/model6.jpg', 'assets/logo6.jpg'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 4.0,
              child: Container(
                height: 450.0,
                width: double.infinity,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            image: DecorationImage(
                              image: AssetImage('assets/model2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          width: MediaQuery.of(context).size.width - 120.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Daisy',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    '34 mins ago',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(Icons.more_vert, color: Colors.grey)
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends',
                      style: TextStyle(fontSize: 12.0, color: Colors.grey),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Hero(
                          tag: 'assets/model3.jpg',
                          child: Container(
                            height: 200,
                            width: (MediaQuery.of(context).size.width - 50) / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: AssetImage('assets/model3.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          children: <Widget>[
                            Hero(
                              tag: 'assets/model5.jpg',
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/model5.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Hero(
                              tag: 'assets/model6.jpg',
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/model6.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              '# Louis vuitton',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10.0,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          height: 25.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                            child: Text(
                              '# Chloe',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10.0,
                                  color: Colors.brown),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(color: Colors.grey.withOpacity(0.2)),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.reply,
                            color: Colors.grey.withOpacity(0.4), size: 20.0),
                        SizedBox(width: 5.0),
                        Text(
                          '1.7k',
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'Montserrat'),
                        ),
                        SizedBox(width: 15.0),
                        Icon(
                          Icons.comment,
                          color: Colors.grey.withOpacity(0.4),
                          size: 20.0,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '325',
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'Montserrat'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 180.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20.0,
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                '2.3k',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Montserrat'),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listItemImage(String coverImage, String logo) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75.0,
              width: 75.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(37.5),
                image: DecorationImage(
                  image: AssetImage(coverImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 50.0,
              left: 50.0,
              child: Container(
                height: 25.0,
                width: 25.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.5),
                  image: DecorationImage(
                    image: AssetImage(logo),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0),
        Container(
          height: 30.0,
          width: 75.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.brown[500]),
          child: Center(
            child: Text(
              'Follow',
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
          ),
        ),
      ],
    );
  }
}
