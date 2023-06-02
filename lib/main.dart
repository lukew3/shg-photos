import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SHG Photos',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SHG Photos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  // Most recent month at the top, oldest month at the bottom
  final List<Map<String, dynamic>> _data = [
    {
      'month': 'April',
      'year': 2021,
      'days': [
        {
          'day': 1,
          'photos': [
            'https://picsum.photos/200/200',
            'https://picsum.photos/200/200',
          ],
        },
        {
          'day': 4,
          'photos': [
            'https://picsum.photos/200/200',
            'https://picsum.photos/200/200',
            'https://picsum.photos/200/200',
            'https://picsum.photos/200/200',
          ],
        },
        {
          'day': 10,
          'photos': [
            'https://picsum.photos/200/200',
            'https://picsum.photos/200/200',
            'https://picsum.photos/200/200',
          ],
        },
      ],
    },
    {
      'month': 'February',
      'year': 2021,
      'days': [
        {
          'day': 1,
          'photos': [
            'https://picsum.photos/200/200',
            'https://picsum.photos/200/200',
            'https://picsum.photos/200/200',
          ],
        },
        {
          'day': 2,
          'photos': [
            'https://picsum.photos/200/200',
            'https://picsum.photos/200/200',
            'https://picsum.photos/200/200',
          ],
        },
      ],
    }
  ];

  void _fetchData() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromRGBO(218, 220, 224, 1))),
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
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
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
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(10.0),
                itemCount: _data.length,
                itemBuilder: (context, index) {
                  return MonthEntry(month: _data[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
        Row(
          children: [
            for (var photo in day['photos']) Image.network(photo),
          ],
        ),
      ],
    );
  }
}
