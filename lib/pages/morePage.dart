import 'package:first_flutter_app/pages/animationPage.dart';
import 'package:first_flutter_app/pages/imagesPage.dart';
import 'package:first_flutter_app/pages/lottiePage.dart';
import 'package:first_flutter_app/pages/moviesPage.dart';
import 'package:first_flutter_app/pages/secondPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MorePage extends StatelessWidget{
  const MorePage({super.key});

  final _tabs = const <Tab>[
    Tab(text: 'Second Page'),
    Tab(text: 'Images'),
    Tab(text: 'Movies'),
    Tab(text: 'Animation'),
    Tab(text: 'Lottie'),
  ];

  final _pages = const [
    SecondPage(),
    ImagesPage(),
    MoviesPage(),
    AnimationPage(),
    LottiePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("More Page"),
            bottom: TabBar(
              // isScrollable: true,
              tabs: _tabs,
            ),
        ),
        body: TabBarView(
            children: _pages,
        ),
      )
    );
  }
}