import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/personnal_box.dart';
import 'package:myapp/personnal_list_tile.dart';

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
                icon: Icon(
                  Icons.settings_outlined,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 18, left: 16, right: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return const PersonnalBox(
                            color: Color(0xFFB2EBB8),
                            title: 'Start weight',
                            subtitle: '53.5 kg',
                          );
                        case 1:
                          return const PersonnalBox(
                            color: Color(0xFFB6EEF5),
                            title: 'Goal',
                            subtitle: '50.0 kg',
                          );
                        case 2:
                          return const PersonnalBox(
                            color: Color(0xFFFEC774),
                            title: 'Daily Calories',
                            subtitle: '53.5 kcal',
                          );
                        case 3:
                          return const PersonnalBox(
                            color: Color(0xFFFEC774),
                            title: 'Daily Calories',
                            subtitle: '53.5 kcal',
                          );
                        default:
                          return const SizedBox.shrink();
                      }
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 5.5);
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const PersonnalListTile(
                  title: 'Physical activity',
                  subtitle: '2 days ago',
                  leading: Icon(Icons.access_time_filled_outlined),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
