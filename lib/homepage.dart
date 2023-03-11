import 'dart:async';
import 'package:flutter/material.dart';
import 'package:note_app/share/comp.dart';

class NoteApp extends StatefulWidget {
  const NoteApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<NoteApp> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/intro.png"),
              fit: BoxFit.contain,
              alignment: Alignment.center),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  final List<Map<String, dynamic>> notes = [
    {
      "title": "Todays grocery list",
      "notecolor": const Color(0xffA4FFC5),
      "time": "June 26, 2022 08:05 PM"
    },
    {
      "title": "Rich dad poor dad quotes",
      "notecolor": const Color(0xffFFFCA4),
      "time": "June 22, 2022 05:00 PM"
    },
    {
      "title": "My first note",
      "notecolor": const Color(0xffA4FFC5),
      "time": "June 20, 2022 10:30 AM"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 25),
            alignment: Alignment.bottomLeft,
            height: 150,
            child: const Text(
              "Notepad",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.normal,
                fontFamily: "Corporative Sans Round Condensed",
                color: Color(0xff383E4A),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyTexetField(
              prefixIcon: Icons.search,
              TextInputType: TextInputType.text,
              hintText: "search notes",
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                final note = notes[index];
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: MyNote(
                    title: note["title"],
                    notecolor: note["notecolor"],
                    time: note["time"],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
