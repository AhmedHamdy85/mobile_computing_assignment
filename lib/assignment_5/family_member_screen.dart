import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class FamilyMempersScreen extends StatelessWidget {
  FamilyMempersScreen({super.key});
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Member'),
      ),
      body: ListView(
        children: [
          FamilyMemberItem(
            image: 'assets/images/family_members/family_daughter.png',
            jname: 'musume',
            ename: 'Daughter',
            onPresd: () {
              player.play(AssetSource('sounds/family_members/daughter.wav'));
            },
          ),
          FamilyMemberItem(
            image: 'assets/images/family_members/family_father.png',
            jname: 'Chichioya',
            ename: 'Father',
            onPresd: () {
              player.play(AssetSource('sounds/family_members/father.wav'));
            },
          ),
          FamilyMemberItem(
            image: 'assets/images/family_members/family_grandfather.png',
            jname: 'Ojīsan',
            ename: 'Grand Father',
            onPresd: () {
              player.play(AssetSource('sounds/family_members/grandfather.wav'));
            },
          ),
          FamilyMemberItem(
            image: 'assets/images/family_members/family_grandmother.png',
            jname: 'o bāchan',
            ename: 'Grand Mother',
            onPresd: () {
              player.play(AssetSource('sounds/family_members/grandmother.wav'));
            },
          ),
          FamilyMemberItem(
            image: 'assets/images/family_members/family_mother.png',
            jname: 'Hahaoya',
            ename: 'Mother',
            onPresd: () {
              player.play(AssetSource('sounds/family_members/mother.wav'));
            },
          ),
          FamilyMemberItem(
            image: 'assets/images/family_members/family_older_brother.png',
            jname: 'Ani',
            ename: 'Older Brother',
            onPresd: () {
              player
                  .play(AssetSource('sounds/family_members/olderbrother.wav'));
            },
          ),
          FamilyMemberItem(
            image: 'assets/images/family_members/family_older_sister.png',
            jname: 'Ane',
            ename: 'Older Sister',
            onPresd: () {
              player.play(AssetSource('sounds/family_members/oldersister.wav'));
            },
          ),
          FamilyMemberItem(
            image: 'assets/images/family_members/family_son.png',
            jname: 'Musuko',
            ename: 'Son',
            onPresd: () {
              player.play(AssetSource('sounds/family_members/son.wav'));
            },
          ),
          FamilyMemberItem(
            image: 'assets/images/family_members/family_younger_brother.png',
            jname: 'Otōto',
            ename: 'Younger Brother',
            onPresd: () {
              player.play(
                  AssetSource('sounds/family_members/youngerbrother.wav'));
            },
          ),
          FamilyMemberItem(
            image: 'assets/images/family_members/family_younger_sister.png',
            jname: 'imōto',
            ename: 'Younger Sister',
            onPresd: () {
              player
                  .play(AssetSource('sounds/family_members/youngersister.wav'));
            },
          ),
        ],
      ),
    );
  }
}

class FamilyMemberItem extends StatelessWidget {
  String image, jname, ename;
  Function()? onPresd;
  FamilyMemberItem({
    required this.image,
    required this.jname,
    required this.ename,
    this.onPresd,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 4)]),
        child: Row(
          children: [
            Image.asset(image),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(jname), Text(ename)],
            ),
            const Spacer(),
            IconButton(
              onPressed: onPresd,
              icon: const Icon(Icons.play_arrow_rounded),
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
