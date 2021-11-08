import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:kickstreet/utils/constants.dart';
import 'utils/drawer.dart';
import 'screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Futura',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FSBStatus drawerStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FoldableSidebarBuilder(
          status: drawerStatus,
          drawer: CustomDrawer(
            closeDrawer: () {
              setState(() {
                drawerStatus = FSBStatus.FSB_CLOSE;
              });
            },
          ),
          screenContents: HomeScreen()),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorAccent,
        onPressed: () {
          // To Open/Close Sidebar
          setState(() {
            drawerStatus = drawerStatus == FSBStatus.FSB_OPEN
                ? FSBStatus.FSB_CLOSE
                : FSBStatus.FSB_OPEN;
          });
        },
        child: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
    );
  }
}
