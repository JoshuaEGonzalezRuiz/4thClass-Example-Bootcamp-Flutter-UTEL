import 'package:flutter/material.dart';

import 'expanded_flexible.dart';
import 'gestures.dart';
import 'layout_builder.dart';
import 'stack.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [
    const StackPage(),
    const GesturesPage(),
    const ExpandedFlexiblePage(),
    LayoutBuilderPage(),
  ];

  List<Widget> navBarItems = const [
    NavigationDestination(icon: Icon(Icons.filter_none), label: "Stack"),
    NavigationDestination(icon: Icon(Icons.touch_app), label: "Gestures"),
    NavigationDestination(
        icon: Icon(Icons.open_with), label: "Expand/Flexible"),
    NavigationDestination(icon: Icon(Icons.dashboard), label: "LayoutBuilder")
  ];

  int pageIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: pages.elementAt(pageIndex),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: navBarItems,
        selectedIndex: pageIndex,
        onDestinationSelected: (value) {
          setState(() {
            pageIndex = value;
          });
        },
      ),
    );
  }
}
