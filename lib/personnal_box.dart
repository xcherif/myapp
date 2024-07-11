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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.raleway(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 2.0),
          RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black, fontSize: 18.0),
              children: [
                TextSpan(
                  text: numericPart,
                  style:  GoogleFonts.rubik(fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: ' $unitPart',
                  style:  GoogleFonts.rubik(
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
