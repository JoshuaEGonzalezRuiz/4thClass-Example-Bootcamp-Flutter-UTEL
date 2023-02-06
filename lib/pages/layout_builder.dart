import 'package:flutter/material.dart';

/*
El código muestra el uso del widget LayoutBuilder en Flutter.
Este widget toma un builder como argumento, el cual es una función que regresa un widget.
La función recibe un objeto constraints que proporciona información sobre el tamaño máximo disponible para construir el widget.

El LayoutBuilder permite construir widgets dinámicos que se adaptan a diferentes tamaños de pantalla.
En este caso, el widget construido por el builder varía dependiendo del tamaño máximo disponible para él, determinado por las restricciones proporcionadas por constraints.

El código verifica la longitud máxima tanto en ancho como en alto (constraints.maxWidth y constraints.maxHeight) y regresa un Container con diferentes colores y tamaños en base a los valores de las restricciones.

Si el ancho y alto máximos son menores a 600, regresa un Container amarillo con tamaño igual al ancho y alto máximo dividido entre 4.

Si el ancho y alto máximos son menores a 650, regresa un Container azul con tamaño igual al ancho y alto máximo dividido entre 2.

Si el ancho y alto máximos son menores a 700, regresa un Container verde con tamaño igual a la mitad del ancho y alto máximo.

Si ninguna de las condiciones anteriores se cumple, regresa un Container rojo con tamaño igual a la mitad del ancho y alto máximo.
*/

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600 && constraints.maxHeight < 600) {
          return Container(
            color: Colors.yellow,
            width: constraints.maxWidth,
            height: constraints.maxHeight / 4,
          );
        } else if (constraints.maxWidth < 650 && constraints.maxHeight < 650) {
          return Container(
            color: Colors.blue,
            width: constraints.maxWidth,
            height: constraints.maxHeight / 2,
          );
        } else if (constraints.maxWidth < 700 && constraints.maxHeight < 700) {
          return Container(
            color: Colors.green,
            width: constraints.maxWidth / 2,
            height: constraints.maxHeight,
          );
        } else {
          return Container(
            color: Colors.red,
            width: constraints.maxWidth / 2,
            height: constraints.maxHeight / 2,
          );
        }
      },
    );
  }
}
