import 'package:flutter/material.dart';
import 'package:ios_animation_icon/controller_animation.dart';
import 'package:ios_animation_icon/controller_icons.dart';
import 'package:ios_animation_icon/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AnimationCtrl()),
        ChangeNotifierProvider(create: (_) => IconsController()),
      ],
      child: const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(),


    );
  }
}

