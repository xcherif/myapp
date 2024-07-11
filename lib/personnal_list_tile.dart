import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonnalListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon leading;

  // final Icon trailing;

  const PersonnalListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leading,
    // required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: null,
          title: Text(
            title,
          ),
          titleTextStyle: GoogleFonts.raleway(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: 18,
          ),
          subtitle: Text(subtitle),
          subtitleTextStyle: GoogleFonts.raleway(
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            fontSize: 16,
          ),
          leading: leading,
          trailing: const Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.chevron_right,
            ),
          ),
        ),
        const SizedBox(
          height: 2.0,
        ),
        const Divider(
          color: Colors.black12,
          height: 1.0,
        ),
      ],
    );
  }
}
