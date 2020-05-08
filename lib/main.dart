import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
 
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin  {
   AnimationController rotationController;
  @override
void initState() {
  rotationController = AnimationController(duration: const Duration(milliseconds: 500),vsync: this);
  super.initState();
}
  
  @override
  Widget build(BuildContext context) {
    final title = ' images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: 
        RotationTransition(
          turns: Tween(begin: 0.0, end: 1.0).animate(rotationController),
          child:Image(image: AssetImage('assets/2.jpeg')))


  //       Center(
  //         child: Column(
  // children: <Widget>[
  //   SizedBox(height:100),
  //         Stack(
  //           alignment:Alignment.topLeft,
  //           children: <Widget>[
              
  //             Transform.rotate(angle: 10,
  //             child:
  //             Padding(
  //               padding: const EdgeInsets.all(18.0),
  //               child: Image(image: AssetImage('assets/2.jpeg')),
  //             )),
             
              
  //             Padding(
  //               padding: const EdgeInsets.only(top:80.0),
  //               child: Center(child: Image(image: AssetImage('assets/1.jpeg'))),
  //             ),
              
              
  //           ] 
  //         )
  // ]),
  //       )
        // Center(
          // child: FadeInImage.assetNetwork(
          //   fadeInCurve: Curves.easeOutBack,
          //   fadeOutCurve: Curves.decelerate,
          //   fadeInDuration: Duration(milliseconds: 10),
          //   fadeOutDuration: Duration(milliseconds: 3000),
          //   placeholder: 'assets/env.jpg',
          //   image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSfZ6iEvWe8x_4xbtz4WWsZSsTNKsybq59EAm5F46NyE0o59o4R&usqp=CAU',
          // ),
          // child:Transform.rotate(angle: 180
          // ch
          // )
        // ),
      ),
    );
  }
}
