import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget{
  const AnimationPage ({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _controller;

  @override
  void initState(){
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 7),
    );

    _animation = Tween(begin: 50.0, end:250.0).animate(_controller);

    _controller.forward();

    _controller.addListener(() {
      setState(() {
        if (_animation.value == 250.0)
        {
          _controller.reverse();
        }
        else if (_animation.value == 50.0)
        {
          _controller.forward();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Animations Page"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(7)
          ),
          height: _animation.value,
          width: _animation.value,
        ),
      ),
    );
  }
}