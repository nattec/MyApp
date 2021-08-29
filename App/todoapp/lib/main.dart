import 'package:flutter/material.dart';
import 'models/global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 3,
        child: new Scaffold(
          body: Stack(
            children: <Widget>[ 
              TabBarView(
              children: [
                new Container(
                  color: Colors.white,
                ),
                new Container(color: Colors.blueGrey[200],),
                new Container(
                  color: greyColor,
                ),
              ],
            ),
            //Caja amarilla superior
            Container(
              //margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.only(top: 220),
              height:360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)
                ),
                color: Color(0xFFFAEBB4),
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,//sepate as max as possible whatever comes next:text and container
                children: <Widget>[
                  Text("Name LastName", style: profileNameStyle),
                  Text("Location", style: profileLocStyle),
                  Text(" "),
                  Text("Experience:", style: profileKpiStyle),
                  Text("Reliability:", style: profileKpiStyle),
                  Container()
                ],
              ),
            ),
            //Boton de calendario
            Container(
              height: 65,
              width: 65,
              margin: EdgeInsets.only(top: 280, left: 18),
              child: FloatingActionButton(
                child: Icon(Icons.date_range, size:40),
                backgroundColor: greyColor,
                onPressed: (){},
              ),
            )
            ]
          ),
          bottomNavigationBar: new TabBar(
            //elevation: 0,
            tabs: [
              Tab(
                icon: new Icon(Icons.home),
              ),
              Tab(
                icon: new Icon(Icons.rss_feed),
              ),
              Tab(
                icon: new Icon(Icons.perm_identity),
              ),
            ],
            labelColor: blueColor,
            unselectedLabelColor: greyColor,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.transparent,
          ),
          backgroundColor: Color(0xFFFAEBB4),
        ),
      ),
    ); 
  }
}
