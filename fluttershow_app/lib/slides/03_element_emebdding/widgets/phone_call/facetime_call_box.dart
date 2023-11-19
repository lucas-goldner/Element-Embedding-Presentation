import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rive/rive.dart';

class FacetimeCallBox extends ConsumerWidget {
  const FacetimeCallBox({super.key});

  double get boxHeight => 80;
  double get boxWidth => 400;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = S.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: CupertinoColors.black.withOpacity(0.5),
        border: Border.all(
          color: CupertinoColors.white.withOpacity(0.2),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: SizedBox(
        height: boxHeight,
        width: boxWidth,
        child: Row(
          children: [
            horizontalMargin16,
            CircleAvatar(
              radius: 20,
              child: ClipOval(
                child: RiveAnimation.asset(
                  Assets.rive.guy,
                  artboard: 'Guy',
                ),
              ),
            ),
            horizontalMargin16,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(t.guyName),
                Text(t.faceTimeVideo),
              ],
            ),
            const Spacer(),
            ColoredBox(
              color: CupertinoColors.white.withOpacity(0.2),
              child: SizedBox(
                width: 1,
                height: boxHeight,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                verticalMargin8,
                Row(
                  children: [
                    horizontalMargin32,
                    Text(
                      t.accept,
                      style: TextStyle(
                        color: CupertinoColors.activeGreen.withOpacity(0.8),
                      ),
                    ),
                    horizontalMargin32,
                  ],
                ),
                verticalMargin8,
                ColoredBox(
                  color: CupertinoColors.white.withOpacity(0.2),
                  child: SizedBox(
                    width: boxWidth / 3,
                    height: 1,
                  ),
                ),
                verticalMargin8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    horizontalMargin32,
                    SizedBox(
                      width: 60,
                      child: Text(
                        t.decline,
                        style: TextStyle(
                          color:
                              CupertinoColors.destructiveRed.withOpacity(0.8),
                        ),
                      ),
                    ),
                    horizontalMargin12,
                    ColoredBox(
                      color: CupertinoColors.white.withOpacity(0.2),
                      child: SizedBox(
                        width: 1,
                        height: boxHeight / 4,
                      ),
                    ),
                    horizontalMargin8,
                    Icon(
                      CupertinoIcons.chevron_down,
                      color: CupertinoColors.white.withOpacity(0.6),
                      size: 12,
                    ),
                    horizontalMargin8,
                  ],
                ),
                verticalMargin4,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
