import 'dart:math';

import 'package:flutter/material.dart';

/*
La clase StackPage es un widget Stateful que permite tener un estado dinámico en la aplicación.
Al ser llamado, su método createState devuelve un objeto de la clase _StackPageState, la cual es la responsable de contener y actualizar el estado de la página.

La página se compone de una serie de 5 contenedores Container, posicionados uno encima de otro en la pantalla. Cada contenedor es definido como un objeto Positioned que especifica su posición en la pantalla a través de las propiedades top y left. Todos estos objetos Positioned son agregados a una lista containers al principio del código.

El método changePositionValues es invocado al presionar un botón flotante en la página, y su función es cambiar la posición de cada contenedor de forma aleatoria.
Para lograr esto, recorre la lista containers y reasigna una nueva posición a cada objeto Positioned.
Finalmente, llama a setState para notificar a Flutter de que la vista de la página ha cambiado y necesita ser actualizada.

La vista de la página es construida en el método build, y consiste en un Container central que contiene un widget Stack con todos los contenedores containers.
Este Container tiene una decoración que incluye un borde y un fondo negro. La página también incluye un botón flotante que permite invocar el método changePositionValues para cambiar la posición de los contenedores.
*/

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() {
    return _StackPageState();
  }
}

class _StackPageState extends State<StackPage> {
  List<Positioned> containers = [
    Positioned(
      top: 0,
      left: 0,
      child: Container(
        width: 200,
        height: 200,
        color: const Color.fromARGB(255, 199, 101, 106),
      ),
    ),
    Positioned(
      top: 25,
      left: 25,
      child: Container(
        width: 175,
        height: 175,
        color: const Color.fromARGB(255, 115, 121, 194),
      ),
    ),
    Positioned(
      top: 50,
      left: 50,
      child: Container(
        width: 150,
        height: 150,
        color: const Color.fromARGB(255, 136, 219, 128),
      ),
    ),
    Positioned(
      top: 75,
      left: 75,
      child: Container(
        width: 125,
        height: 125,
        color: const Color.fromARGB(255, 202, 216, 122),
      ),
    ),
    Positioned(
      top: 100,
      left: 100,
      child: Container(
        width: 100,
        height: 100,
        color: const Color.fromARGB(255, 108, 219, 223),
      ),
    )
  ];

  void changePositionValues() {
    setState(() {
      final random = Random();
      containers = containers.map((container) {
        return Positioned(
          top: random.nextInt(100) + 50,
          left: random.nextInt(100) + 50,
          child: container.child,
        );
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.black, border: Border.all()),
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.5,
          child: Stack(
            children: containers,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Change containers positions',
        onPressed: changePositionValues,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
