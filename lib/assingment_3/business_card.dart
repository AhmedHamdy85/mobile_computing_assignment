import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 192, 177),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/profile-pic.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Ahmed Hamdy',
              style: GoogleFonts.pacifico(color: Colors.white),
            ),
            Text(
              'F l u t t e r  D e v e l o p e r',
              style: GoogleFonts.abel(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              width: 70,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.white38],
                    begin: Alignment.center),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              width: 220,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(8)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.email_outlined,
                      color: Color.fromARGB(255, 17, 192, 177),
                    ),
                    Text('ah2261@fayoum.edu.eg')
                  ]),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 30,
              width: 220,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(8)),
              child: Row(children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 17, 192, 177),
                  ),
                ),
                Text('01146399104')
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
