import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MonthEntry extends StatelessWidget {
  final Map<String, dynamic> month;

  const MonthEntry({Key? key, required this.month}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 52.0),
          child: Text(
            "${month['month']} ${month['year']}",
            style: GoogleFonts.poppins(
              // Doesn't match exactly because Google Sans is used in official app. Roboto may be a good alternative.
              textStyle: const TextStyle(
                color: Color(0xFF3C4043),
                fontWeight: FontWeight.w400,
              ),
              fontSize: 28,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              for (var day in month['days']) DayEntry(day: day),
            ],
          ),
        ),
      ],
    );
  }
}

class DayEntry extends StatelessWidget {
  final Map<String, dynamic> day;

  const DayEntry({Key? key, required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 17.0),
          child: Text(
            "${day['day']}",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Color(0xFF3C4043),
                fontWeight: FontWeight.w400,
              ),
              fontSize: 14,
            ),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
          ),
          itemCount: day['photos'].length,
          itemBuilder: (context, index) {
            return Image.network(day['photos'][index]);
          },
        ),
      ],
    );
  }
}
