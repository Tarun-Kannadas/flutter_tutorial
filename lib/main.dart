import 'package:first_flutter_app/secondPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarun Kannadas',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Elevated Button
            ElevatedButton(
                onPressed: (){
                  Navigator.push((context), MaterialPageRoute(builder: (context) => const SecondPage(),
                  ),
                  );
                },
                child: const Text('Go to Second Page')
            ),

            const SizedBox(height:16),

            /// Outline Button
            OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Outlined Button Clicked'))
                  );
                }, child: const Text('Outlined Button')
            )
          ],
        ),
      ),

      /// Floating Action Button
      // floatingActionButton: FloatingActionButton(
      //     onPressed: (){
      //       ScaffoldMessenger.of(context).showSnackBar(
      //         const SnackBar(content: Text('Floating Action Button Clicked'))
      //       );
      //     },
      //   child: const Icon(Icons.add),
      // ),

    );
  }
}