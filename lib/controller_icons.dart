
import 'package:flutter/material.dart';

class IconsController extends ChangeNotifier{

  final List<IconModel> icons = [
    IconModel(
        appName: "Facebook",
        appImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Facebook-icon-1.png/640px-Facebook-icon-1.png",
    ),
    IconModel(
      appName: "Instagram",
      appImage: "https://www.clubevilaleopoldina.com.br/wp-content/uploads/2018/06/inst.png",
    ),
    IconModel(
      appName: "Spotify",
      appImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Spotify_logo_without_text.svg/2048px-Spotify_logo_without_text.svg.png",
    ),
    IconModel(
      appName: "Nubank",
      appImage: "https://logodownload.org/wp-content/uploads/2019/08/nubank-logo-2-1.png",
    ),
    IconModel(
      appName: "Inter",
      appImage: "https://play-lh.googleusercontent.com/jaCkHvnjyNSTiID7_xDQATtRBDdH0eHZlnPNKIUWhx4XrrUQveXgtOnz9NiHz2AaCtcN",
    ),
    IconModel(
      appName: "LinkedIn",
      appImage: "https://cdn-icons-png.flaticon.com/512/174/174857.png",
    ),
    IconModel(
      appName: "Gmail",
      appImage: "https://i.pinimg.com/originals/2b/dc/78/2bdc78b6c227760fca29334de506d739.png",
    ),
    IconModel(
      appName: "YouTube",
      appImage: "https://i.pinimg.com/originals/6a/42/04/6a4204f04496559aa27101d25983d0f0.png",
    ),
    IconModel(
      appName: "Google",
      appImage: "https://online.inatel.br/wp-content/plugins/edwiser-bridge-sso/assets/images/ic_google_plus.jpg",
    ),
  ];

  removeItem(element){
    icons.remove(element);
    notifyListeners();
  }
}

class IconModel{
  final String appName;
  final String appImage;

  IconModel({required this.appName, required this.appImage});
}