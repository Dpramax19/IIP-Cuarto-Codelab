import 'package:flutter/material.dart';

void main() {
  runApp(const Menu());
}

class MenuItem extends StatelessWidget {
  const MenuItem(this.icon, this.itemText, {super.key});
  final String icon;
  final String itemText;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        icon,
        style: const TextStyle(
          fontSize: 30.0,
        ),
      ),
      title: Text(itemText),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Menu Demo'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Example1(),
              Example2(),
              Example3(),
            ],
          ),
        ),
      ),
    );
  }
}

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 30.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Explore the restaurant\'s delicious menu items below!',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded (
      child: ListView(
        children: const [
          MenuItem('🍔', 'Burger'),
          MenuItem('🌭', 'Hot Dog'),
          MenuItem('🍟', 'Fries'),
          MenuItem('🥤', 'Soda'),
          MenuItem('🍦', 'Ice Cream'),
        ],
      ),
    );
  }
}

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              // ignore_for_file: avoid_print
              print('Pickup button pressed.');
            },
            child: const Text(
              'Pickup',
            ),
          ),
          const VerticalDivider(
            width: 20.0,
            thickness: 5.0,
          ),
          ElevatedButton(
            onPressed: () {
              print('Delivery button pressed.');
            },
            child: const Text(
              'Delivery',
            ),
          )
        ],
      ),
    );
  }
}