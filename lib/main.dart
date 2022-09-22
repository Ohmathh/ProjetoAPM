import 'package:flutter/material.dart';
import 'animes.dart';

import 'filmes.dart';
import 'series.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ANIMAAI !',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'ANIMAAI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            Card(
              color: Colors.amberAccent,
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AnimesPage(title: 'Anime '))
                  );
                },
                child: const SizedBox(
                  width: 100,
                  height: 100,
                  child: Text(
                    textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                      ),
                      "Animes"
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.amberAccent,
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SeriesPage(title: 'Series'))
                  );
                },
                child: const SizedBox(
                  width: 100,
                  height: 100,
                  child: Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                      ),
                      "Series"
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.amberAccent,
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FilmesPage(title: 'Filmes'))
                  );
                },
                child: const SizedBox(
                  width: 100,
                  height: 100,
                  child: Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                      ),
                      "Filmes"
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

