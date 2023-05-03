import 'package:flutter/material.dart';
import 'package:mobile_computing_assignment/assignment_5/family_member_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language App'),
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              height: 40,
              color: Colors.grey[300],
              child: const Center(
                  child: Text(
                "your Way to learn japanes",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ))),
          HomePageItem(
            text: 'Numbers',
          ),
          const Divider(
            height: 1,
            color: Colors.black,
            indent: 20,
          ),
          HomePageItem(
            text: 'Family Members',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FamilyMempersScreen()));
            },
          ),
          const Divider(
            height: 1,
            color: Colors.black,
            indent: 20,
          ),
          HomePageItem(
            text: 'Colors',
          ),
        ],
      ),
    );
  }
}

class HomePageItem extends StatelessWidget {
  String text;
  Function()? onTap;
  HomePageItem({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 20),
        width: double.infinity,
        height: 70,
        color: Colors.grey[300],
        child: Row(
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
              textAlign: TextAlign.start,
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
