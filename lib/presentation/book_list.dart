import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BookList extends HookWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              children: [
                Container(
                  color: Colors.red,
                  width: 70,
                  height: 150,
                ),
                const Column(
                  children: [
                    Text(''),
                    Text(''),
                    SizedBox(
                      height: 16,
                    ),
                    Text(''),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
