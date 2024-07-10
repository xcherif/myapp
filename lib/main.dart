import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/personnal_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application de test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          leading: const Icon(Icons.chevron_left),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton.outlined(
                onPressed: null,
                icon: Icon(Icons.settings_outlined),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 18, left: 16, right: 18),
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox.expand(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Flexible(
                          child: PersonnalBox(
                            color: Color(0xFFB2EBB8),
                            title: 'Start weight',
                            subtitle: '53.5 kg',
                          ),
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Flexible(
                          child: PersonnalBox(
                            color: Color(0xFFB6EEF5),
                            title: 'Goal',
                            subtitle: '50.0 kg',
                          ),
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Flexible(
                          child: PersonnalBox(
                            color: Color(0xFFFEC774),
                            title: 'Daily Calories',
                            subtitle: '53.5 kcal',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
