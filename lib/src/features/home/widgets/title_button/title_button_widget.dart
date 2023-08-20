import 'package:crypto_mystery/generated/l10n.dart';
import 'package:crypto_mystery/src/core/ui/res/app_images.dart';
import 'package:flutter/material.dart';

class TitleButton extends StatelessWidget {
  final bool isLeading;
  const TitleButton({super.key, required this.isLeading});

  @override
  Widget build(BuildContext context) {
    return TitleButtonStub(isLeading: isLeading);
  }
}

class TitleButtonStub extends StatelessWidget {
  final bool isLeading;
  final double sizeCoefficient;
  const TitleButtonStub({
    super.key,
    required this.isLeading,
    this.sizeCoefficient = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!isLeading)
          Text(
            S.of(context).telegram_newspaper,
            style:
                TextStyle(color: Colors.white, fontSize: 20 * sizeCoefficient),
          ),
        Image.asset(
          isLeading ? AppImages.telegramLogo : AppImages.newspaperLogo,
          frameBuilder: (ctx, child, _, __) => Padding(
            padding: EdgeInsets.only(
              left: isLeading ? 24 * sizeCoefficient : 10 * sizeCoefficient,
              top: 5 * sizeCoefficient,
              bottom: 5 * sizeCoefficient,
              right: isLeading ? 10 * sizeCoefficient : 24 * sizeCoefficient,
            ),
            child: Transform.scale(scale: sizeCoefficient, child: child),
          ),
        ),
        if (isLeading)
          Text(
            S.of(context).telegram_operator,
            style:
                TextStyle(color: Colors.white, fontSize: 20 * sizeCoefficient),
          ),
      ],
    );
  }
}
