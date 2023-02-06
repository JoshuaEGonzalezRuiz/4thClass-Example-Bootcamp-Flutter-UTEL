import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

/*
Este código crea una página en Flutter llamada "GesturesPage" que muestra varios cuadros de color con diferentes tipos de detectores de gestos.
Cada detector de gestos es una "GestureDetector" envuelta en un "Tooltip" que proporciona un mensaje cuando se posiciona el cursor sobre él.
Los tipos de gestos detectados incluyen: "tap", "double tap", "long press" y "tap down/tap up".
Cuando se realiza uno de estos gestos en un cuadro, se muestra un mensaje "Toast" en la parte inferior de la pantalla con un texto que describe el gesto realizado.
*/

class GesturesPage extends StatelessWidget {
  const GesturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Tooltip(
                  message: "Tap GestureDetector 1",
                  child: GestureDetector(
                    onTap: () {
                      Toast.show(
                        "Tapped 1",
                        duration: Toast.lengthShort,
                        gravity: Toast.bottom,
                      );
                    },
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Tooltip(
                  message: "Double Tap GestureDetector 2",
                  child: GestureDetector(
                    onDoubleTap: () {
                      Toast.show(
                        "Double Tapped 2",
                        duration: Toast.lengthShort,
                        gravity: Toast.bottom,
                      );
                    },
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.green,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Tooltip(
                  message: "Long Press GestureDetector 3",
                  child: GestureDetector(
                    onLongPress: () {
                      Toast.show(
                        "Long Pressed 3",
                        duration: Toast.lengthShort,
                        gravity: Toast.bottom,
                      );
                    },
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Tooltip(
                  message: "Tap Down GestureDetector 4",
                  child: GestureDetector(
                    onTapDown: (details) {
                      Toast.show(
                        "Tap Down 4",
                        duration: Toast.lengthShort,
                        gravity: Toast.bottom,
                      );
                    },
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.purple,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Tooltip(
                    message: "Tap Up GestureDetector 5",
                    child: GestureDetector(
                      onTapUp: (details) {
                        Toast.show(
                          "Tap Up 5",
                          duration: Toast.lengthShort,
                          gravity: Toast.bottom,
                        );
                      },
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        color: Colors.yellow,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
