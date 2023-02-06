import 'package:flutter/material.dart';

/*
Este código es un ejemplo de cómo utilizar dos de los widgets de Flutter, Expanded y Flexible, para controlar la distribución de espacio en la pantalla.

El código crea una página que muestra dos contenedores, cada uno con un Row dentro.
En el primer contenedor, hay dos widgets Expanded, que se expanden para llenar todo el espacio disponible en el contenedor.
En el segundo contenedor, hay dos widgets Flexible con diferentes valores de flex, lo que les da un tamaño diferente en relación al otro widget Flexible.

Además, todos los widgets están contenidos en un SingleChildScrollView para permitir un scroll vertical cuando los widgets no caben en la pantalla.
*/

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.green,
            height: 100,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    child: const Text("Expanded 1"),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: const Text("Expanded 2"),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50.0),
          Container(
            color: Colors.blue,
            height: 100,
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Container(
                    color: Colors.yellow,
                    child: const Text("Flexible 1"),
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    child: const Text("Flexible 2"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
