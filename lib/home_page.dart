import 'package:flutter/material.dart';
import 'package:ios_animation_icon/controller_icons.dart';
import 'package:ios_animation_icon/shake_icon.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("IOS Icons Animation"),
        centerTitle: true,
      ),
      body: Consumer<IconsController>(
        builder: (context, state, _){
          return Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Wrap(
                runSpacing: 10,
                  children: state.icons.map((e){
                    return  ShakeIcon(
                      appName: e.appName,
                      backgroundImage: e.appImage,
                      onClose: (){
                        state.removeItem(e);
                      });
                  }).toList()
              ),
            ),
          );
        },
      )
    );
  }
}


