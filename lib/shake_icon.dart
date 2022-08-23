import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller_animation.dart';

class ShakeIcon extends StatelessWidget {

  final VoidCallback onClose;
  final String backgroundImage;
  final String appName;
  const ShakeIcon({
    Key? key,
    required this.onClose,
    required this.backgroundImage,
    required this.appName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AnimationCtrl>(
      builder: (context, anim, _){
        return AnimatedRotation(
          duration: const Duration(milliseconds: 120),
          turns: anim.degrees * pi / 180,
          child: AnimatedPadding(
            padding:  EdgeInsets.only(top: anim.top, left: anim.left),
            duration: const Duration(milliseconds: 120),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: (){
                    anim.playAnim = !anim.playAnim;
                    anim.startAnimation();
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(image: NetworkImage(backgroundImage))
                        ),
                      ),
                      Text(appName, style: const TextStyle(color: Colors.white),)
                    ],
                  ),
                ),

                //if(anim.showCloseIcon)
                GestureDetector(
                  onTap: (){
                    onClose();
                  },
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 200),
                    opacity: anim.closeIconOpacity,
                    child: Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          shape: BoxShape.circle
                      ),
                      child: const Icon(Icons.remove, size: 20,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },

    );
  }
}