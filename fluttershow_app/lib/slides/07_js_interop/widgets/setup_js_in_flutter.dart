import 'package:flutter/material.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:fluttershow_base/components/model/enum/code_display_themes.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/wrapper/code_display.dart';
import 'package:fluttershow_keynote/fluttershow_keynote.dart';

class SetupJSInFlutter extends StatelessWidget {
  const SetupJSInFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    final t = S.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.addJSDep,
          style: KeynoteTextstyles.body(),
        ),
        verticalMargin24,
        SizedBox(
          width: 600,
          child: CodeDisplay(
            '''
  
                name: red_counter_app
                description: "The best counter app ever. In Red!"
                
                environment:
                ...
                
                dependencies:
                  flutter:
                    sdk: flutter
                ...
                  js: ^0.6.7 <<<<<<<<<<<<<<<<<<
                ...
  
                dev_dependencies:
                ...
                
                ''',
            codeColorTheme: CodeDisplayColorThemes.cobalt,
            height: 340,
            boxDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        verticalMargin48,
        Text(
          t.exportStateAndFunctions,
          style: KeynoteTextstyles.body(),
        ),
        verticalMargin24,
        SizedBox(
          width: 720,
          child: CodeDisplay(
            """
  
          import 'dart:async';
          
          import 'package:flutter/material.dart';
          import 'package:js/js.dart' as js;
          import 'package:js/js_util.dart' as js_util;
          
          void main() {
            runApp(const MyApp());
          }
          
          class MyApp extends StatelessWidget {
            const MyApp({super.key});
          
            @override
            Widget build(BuildContext context) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 199, 65, 55)),
                  useMaterial3: true,
                ),
                home: const MyHomePage(title: 'Red Counter App'),
              );
            }
          }
          
          class MyHomePage extends StatefulWidget {
            const MyHomePage({super.key, required this.title});
          
            final String title;
          
            @override
            State<MyHomePage> createState() => _MyHomePageState();
          }
          
          @js.JSExport()
          class _MyHomePageState extends State<MyHomePage> {
            final _streamController = StreamController<void>.broadcast();
            int _counterScreenCount = 0;
          
            @override
            void initState() {
              super.initState();
              final export = js_util.createDartExport(this);
              js_util.setProperty(js_util.globalThis, '_appState', export);
              js_util.callMethod<void>(js_util.globalThis, '_stateSet', []);
            }
          
            @js.JSExport()
            void increment() {
              setState(() {
                _counterScreenCount++;
                _streamController.add(null);
              });
            }
          
            @js.JSExport()
            void addHandler(void Function() handler) {
              _streamController.stream.listen((event) {
                handler();
              });
            }
          
            @js.JSExport()
            int get count => _counterScreenCount;
          
            @override
            void dispose() {
              _streamController.close();
              super.dispose();
            }
          
            @override
            Widget build(BuildContext context) ...
          }
          """,
            codeColorTheme: CodeDisplayColorThemes.cobalt,
            height: 1600,
            boxDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
