import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Converto',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue.shade600,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Ubuntu',
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: MyHomePage(title: 'Converto'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                  child: Icon(
                Icons.monetization_on,
              )),
              Tab(
                  child: Icon(
                Icons.functions,
              )),
              Tab(
                  child: Icon(
                Icons.query_builder,
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(
              Icons.monetization_on,
            ),
            Icon(
              Icons.monetization_on,
            ),
            Icon(
              Icons.monetization_on,
            ),
          ],
        ),
      ),
    );
  }
}
