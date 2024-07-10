import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  var maVariable = 14.0;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
        title: Text('Profile'),
        actions: [
          Icon(Icons.settings),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: box(
                        color: Color.fromARGB(255, 67, 233, 94),
                        title: '53.3 kg',
                        sous_titre: 'Start weight'),
                  ),
                  Flexible(
                    child: box(
                        color: Color.fromARGB(255, 147, 221, 235),
                        title: '50.0 kg',
                        sous_titre: 'Goal'),
                  ),
                  Flexible(
                    child: box(
                      color: Color.fromARGB(255, 235, 232, 96),
                      title: '740 kcal',
                      sous_titre: 'Daily Calories',
                    ),
                  ),
                ],
              ),
            ),
            createListTile(
              myIcone: Icons.attractions_rounded,
              titre: 'Physical activity',
              subTitle: '2 years ago',
            ),
            Divider(),
            createListTile(
              myIcone: Icons.article_outlined,
              titre: 'Statistics',
              subTitle: 'this year : 109 kilometre',
            ),
            Divider(),
            createListTile(
              myIcone: Icons.route_outlined,
              titre: 'Routes',
              subTitle: '7',
            ),
            Divider(),
            createListTile(
              myIcone: Icons.emoji_events_outlined,
              titre: 'Best Time',
              subTitle: 'show all',
            ),
            Divider(),
            createListTile(
              myIcone: Icons.bolt_rounded,
              titre: 'Equipements',
              subTitle: 'Nike Pegasus 3000: 130.4 km',
            ),
            Divider(),
          ]),
        ),
      ),
    );
  }

  Widget box(
      {required Color color,
      required String title,
      required String sous_titre}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(sous_titre),
              subtitle: Text(title),
            ),
          )),
    );
  }

  Widget createListTile(
      {required IconData myIcone,
      required String titre,
      required String subTitle}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        leading: Icon(myIcone),
        title: Text(titre),
        subtitle: Text(subTitle),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
