import 'package:flutter/material.dart';

import 'episodio.dart';

class DescricaoPage extends StatefulWidget {
  const DescricaoPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DescricaoPage> createState() => _DescricaoPageState();
}

class _DescricaoPageState extends State<DescricaoPage> {
  int _counter = 0;

  void _incluirAfazer() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 1,
          children: <Widget> [
            const Image(
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
            const Text("Descrição ensana"),
            SizedBox(
              width: 100,
              height: 100,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const EpisodioPage(title: 'Episódios'))
                  );
                }, child: const Text("Ver Episódios"),
              ),
            )
          ],
        )

      )

    );
  }
}


