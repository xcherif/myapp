import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonnalBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;

  const PersonnalBox({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    // Séparer le subtitle en partie numérique et unité
    final parts = subtitle.split(' ');
    final numericPart = parts[0];
    final unitPart = parts.length > 1 ? parts[1] : '';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: GoogleFonts.raleway(
                fontSize: 17,
                fontWeight: FontWeight.normal,
              )),
          const SizedBox(height: 2.0),
          RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black, fontSize: 20.0),
              children: [
                TextSpan(
                  text: numericPart,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' $unitPart',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
