import 'package:flutter/material.dart';

class AnimationCtrl extends ChangeNotifier{
  double top = 0;
  double left = 0;
  bool playAnim = false;
  double degrees = 0;
  double closeIconOpacity = 0;


  startAnimation() async {
    closeIconOpacity = 1;
    await Future.delayed(const Duration(milliseconds: 120));
    top = top == 0 ? 2 : 0;
    degrees = -0.2;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 120));
    left = left == 0 ? 2 : 0;
    degrees = 0.2;
    notifyListeners();

    if(playAnim) {
      startAnimation();
    }else{
      degrees = 0;
      closeIconOpacity = 0;
      notifyListeners();
    }
  }


}