import 'package:flutter/material.dart';
import 'package:image_item_slider/mine_package.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  String title ;
   MyHomePage({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageAnimationBanner();
  }
}

