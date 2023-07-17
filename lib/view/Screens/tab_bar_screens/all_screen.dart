// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:thiran_ui_design/model/tile/all_tile.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            AllTile(
              color: Colors.blue,
                topic: 'Dashboard',
                detail: 'Today, Shared by -Ui Been',
                date: 'July 25,2021-July 30,2021',
                percentage: 65),
            SizedBox(
              height: 20,
            ),
            AllTile(
              color: const Color.fromARGB(255, 67, 225, 149),
                topic: 'Dashboard',
                detail: 'Today, Shared by -Ui Been',
                date: 'July 25,2021-July 30,2021',
                percentage: 85 ),
            SizedBox(
              height: 20,
            ),
            AllTile(
              color: const Color.fromARGB(255, 251, 165, 36),
                topic: 'Dashboard',
                detail: 'Today, Shared by -Ui Been',
                date: 'July 25,2021-July 30,2021',
                percentage: 30),
          ],
        ),
      ),
    );
  }
}
