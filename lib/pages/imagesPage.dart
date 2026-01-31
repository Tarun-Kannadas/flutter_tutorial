import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget{
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Images Page"),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 24.0
        ),
        backgroundColor: Colors.green,
        elevation: 16.0,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/image.jpg",
            height: 220.0,
            width: 220.0,),
            Image.network("https://img.freepik.com/free-photo/young-adults-having-block-party_23-2149571514.jpg?size=338&ext=jpg",
            height: 220.0,
            width: 220.0,),
            CachedNetworkImage(imageUrl:"https://static.desygner.com/wp-content/uploads/sites/13/2022/05/04141642/Free-Stock-Photos-01.jpg",
            height: 220.0,
            width: 220.0,),
          ],
        ),
      ),
    );
  }
}