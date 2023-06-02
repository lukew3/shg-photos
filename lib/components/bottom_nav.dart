import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        //color: Color.fromRGBO(199, 224, 224, 1),
        border: Border(
          top: BorderSide(
            color: Color.fromRGBO(218, 220, 224, 1),
          ),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavButton(
              icon: Icons.image_outlined,
              title: "Photos",
            ),
            BottomNavButton(
              icon: Icons.search,
              title: "Search",
            ),
            BottomNavButton(
              icon: Icons.group_outlined,
              title: "Sharing",
            ),
            BottomNavButton(
              icon: Icons.art_track_outlined,
              title: "Library",
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavButton extends StatelessWidget {
  final IconData icon;
  // final IconData iconSelected;
  final String title;

  const BottomNavButton({
    Key? key,
    required this.icon,
    // required this.iconSelected,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          semanticLabel: title,
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
