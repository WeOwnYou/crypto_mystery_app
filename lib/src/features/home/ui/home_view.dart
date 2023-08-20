import 'package:crypto_mystery/src/core/ui/res/app_images.dart';
import 'package:crypto_mystery/src/features/home/widgets/title_button/title_button_android.dart'
    if (dart.library.io) 'package:crypto_mystery/src/features/home/widgets/title_button/title_button_android.dart'
    if (dart.library.js) 'package:crypto_mystery/src/features/home/widgets/title_button/title_button_web.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        backgroundColor: Colors.black,
        actions:  const [
          TitleButton(isLeading: true),
          // PlatformDependentBehavior.buildWidgetByPlatform(
          //   androidWidget: const TitleButtonAndroid(isLeading: true),
          //   webWidget: const TitleButtonWeb(isLeading: true),
          // ),
          Spacer(),
          // PlatformDependentBehavior.buildWidgetByPlatform(
          //   androidWidget: const TitleButtonAndroid(isLeading: false),
          //   webWidget: const TitleButtonWeb(isLeading: false),
          // ),
          TitleButton(isLeading: false),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xff01091d),
          ),
          Image.asset(
            AppImages.cryptoMysteryBackground,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ],
      ),
    );
  }
}
