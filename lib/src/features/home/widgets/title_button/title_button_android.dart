import 'dart:io';

import 'package:crypto_mystery/src/features/home/widgets/title_button/title_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TitleButton extends StatelessWidget {
  final bool isLeading;
  const TitleButton({super.key, required this.isLeading});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (isLeading) {
          await _launchURL(url: 'https://t.me/crypto_mystery_bot');
        } else {
          await _launchURL(url: 'https://t.me/news_crypto_mystery');
        }
        // if (isLeading) {
        //   // ignore: unsafe_html
        //   html.window.open('https://t.me/crypto_mystery_bot', 'test');
        // } else {
        //   // ignore: unsafe_html
        //   html.window.open('https://t.me/+Tl_DtBA1_e9iNzAy', 'test2');
        // }
      },
      child: TitleButtonStub(isLeading: isLeading, sizeCoefficient: 0.8),
    );
  }
}

Future<void> _launchURL({required String url}) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(
      uri,
      mode: Platform.isAndroid
          ? LaunchMode.externalApplication
          : LaunchMode.inAppWebView,
    );
  }
}
