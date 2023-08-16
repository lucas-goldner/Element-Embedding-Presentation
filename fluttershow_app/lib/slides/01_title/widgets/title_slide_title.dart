import 'dart:ui' as UI;
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_shaders/flutter_shaders.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';

class TitleSlideTitle extends HookWidget {
  const TitleSlideTitle({super.key});

  Future<UI.Image> loadImage(String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();
    final codec = await UI.instantiateImageCodec(bytes);
    final frameInfo = await codec.getNextFrame();
    return frameInfo.image;
  }

  Future<(UI.Image, UI.Image)> loadImages() async {
    final samplerOne = await loadImage('assets/images/custom/fluttershow.png');
    final samplerTwo = await loadImage('assets/images/custom/distortion.png');
    return (samplerOne, samplerTwo);
  }

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(duration: 3.hours)..repeat();

    return FutureBuilder<(UI.Image, UI.Image)>(
      future: loadImages(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          controller.forward();

          return ShaderBuilder(
            (context, shader, child) {
              controller.addListener(() {
                shader.setFloat(3, controller.value);
              });

              return AnimatedSampler(
                (image, size, canvas) {
                  shader
                    ..setFloatUniforms((uniforms) {
                      uniforms.setSize(size);
                    })
                    ..setImageSampler(0, snapshot.requireData.$1)
                    ..setImageSampler(1, snapshot.requireData.$2);

                  canvas.drawRect(
                    Rect.fromLTWH(0, 0, size.width, size.height),
                    Paint()..shader = shader,
                  );
                },
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    S.of(context).presentationTitle,
                    style: FSTextStyles.title(),
                  )
                      .animate(
                        autoPlay: true,
                        onPlay: (controller) => controller.repeat(),
                      )
                      .shimmer(
                        duration: 5.seconds,
                        colors: [
                          const Color.fromARGB(255, 255, 87, 221),
                          const Color.fromARGB(255, 86, 194, 255),
                          const Color.fromARGB(255, 255, 87, 221),
                        ],
                        stops: [0, 0.2, 1],
                        curve: Curves.easeInQuad,
                      ),
                ),
              );
            },
            assetKey: 'shaders/glitch.frag',
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
