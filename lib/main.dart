import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
              title: Text('FLUTTER DEMO'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Navigration',
                  onPressed: () => debugPrint('Search button is pressed.'),
                )
              ],
              elevation: 30.0),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12)
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
                text: '首页',
              ),
              Tab(
                icon: Icon(Icons.dashboard),
                text: '分类',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: '我的',
              ),
            ],
          ),
        ));
  }
}
