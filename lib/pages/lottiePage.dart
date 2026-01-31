import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:first_flutter_app/pages/constants.dart';

class LottiePage extends StatelessWidget{
  const LottiePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Page"),
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
            Lottie.network(deliverLottieUrl),
            // SizedBox(height: 16.0),
            Lottie.network(duckLottieUrl,
            height:250.0,
            width:250.0,)
          ],
        ),
      ),
    );
  }
}