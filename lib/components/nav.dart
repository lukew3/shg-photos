import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nav extends StatelessWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(218, 220, 224, 1))),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Text(
              'SHGPhotos',
              style: GoogleFonts.poppins(
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(241, 243, 244, 1),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Color.fromRGBO(95, 99, 104, 1),
                    semanticLabel: 'Search',
                  ),
                  Expanded(
                    child: TextField(
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search your photos',
                        contentPadding: EdgeInsets.only(left: 10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (states) {
                    return (states.contains(MaterialState.hovered)
                        ? const Color.fromRGBO(19, 96, 196, 1)
                        : const Color.fromRGBO(26, 115, 232, 1));
                  },
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 8.0,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.upload,
                      color: Colors.white,
                      size: 17,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 7.0)),
                    Text(
                      "Import",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Icon(
            Icons.more_vert,
            semanticLabel: 'More',
          )
        ],
      ),
    );
  }
}
