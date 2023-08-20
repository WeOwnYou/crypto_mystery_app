// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:crypto_mystery/src/features/home/widgets/title_button/title_button_widget.dart';
import 'package:flutter/material.dart';

class TitleButton extends StatelessWidget {
  final bool isLeading;
  const TitleButton({super.key, required this.isLeading});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (isLeading) {
            // ignore: unsafe_html
            html.window.open('https://t.me/crypto_mystery_bot', 'test');
          } else {
            // ignore: unsafe_html
            html.window.open('https://t.me/news_crypto_mystery', 'test2');
          }
        },
        child: TitleButtonStub(isLeading: isLeading),
      ),
    );
  }
}
