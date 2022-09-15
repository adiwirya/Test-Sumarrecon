import 'package:flutter/material.dart';
import 'package:test234/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    List arr = [1, 4, -3, 20];
    List res = arr.map((val) => val * 6).toList();
    print('output: $res');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Menu Utama')),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Manipulasi'),
                        const Text('Elemen'),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ListDataScreen.routeName);
                  },
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      margin: const EdgeInsets.all(18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('List'),
                          const Text('Data'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Card(
                    margin: const EdgeInsets.all(18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Entri'),
                        const Text('Keluhan'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Card(
                    margin: const EdgeInsets.all(18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Keluar'),
                        const Text('Aplikasi'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
