import 'package:flutter/material.dart';

class EpisodioPage extends StatefulWidget {
  const EpisodioPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<EpisodioPage> createState() => _EpisodioPageState();
}

class _EpisodioPageState extends State<EpisodioPage> {
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
      body: ListView(
        children: [
          ListTile(
            onTap: (){
              print('Ep 1 clicado');
            },
            leading: const Icon(Icons.play_arrow),
            title: const Text('Episodio 1'),
            subtitle: const Text('Piloto'),
          ),
          ListTile(
            onTap: (){
              print('Ep 2 clicado');
            },
            leading: const Icon(Icons.play_arrow),
            title: const Text('Episodio 2'),
            subtitle: const Text('Co-Piloto'),
          ),
          ListTile(
            onTap: (){
              print('Ep 3 Clicado');
            },
            leading: const Icon(Icons.play_arrow),
            title: const Text('Episodio 3'),
            subtitle: const Text('Passageiros'),
          ),
          ListTile(
            onTap: (){
              print('Ep 4 clicado');
            },
            leading: const Icon(Icons.play_arrow),
            title: const Text('Episodio 4'),
            subtitle: const Text('Bagagens'),
          ),
        ],
      ),

    );
  }
}


