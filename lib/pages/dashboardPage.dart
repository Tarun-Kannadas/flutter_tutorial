import 'package:first_flutter_app/pages/morePage.dart';
import 'package:first_flutter_app/pages/moviesPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget{
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  int _currentIndex = 0;

  final _items = <BottomNavigationBarItem> [
    const BottomNavigationBarItem(label: "Home",icon:Icon(Icons.home)),
    const BottomNavigationBarItem(label:"More", icon: Icon(Icons.more)),
  ];

  final _pages = const [
    MoviesPage(),
    MorePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        titleTextStyle: TextStyle(
            fontSize: 24.0,
            color: Colors.black
        ),
        backgroundColor: Colors.lightGreenAccent,
        elevation: 8.0,
        shadowColor: Colors.black,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Tarun Kannadas"),
                accountEmail: Text("tarunkannadas@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  // child: ,
                ),
            ),
            ElevatedButton(onPressed: (){}, child: Text("Button")),
          ],
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          // selectedIconTheme: Colors.red,
          items: _items,
          onTap: (index){
            _currentIndex = index;
            setState(() {});
          },
      ),
    );
  }
}