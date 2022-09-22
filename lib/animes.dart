import 'package:flutter/material.dart';
import 'package:projetoapp/descricao.dart';

class AnimesPage extends StatefulWidget {
  const AnimesPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AnimesPage> createState() => _AnimesPageState();
}

class _AnimesPageState extends State<AnimesPage> {
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DescricaoPage(title: 'Descrição '))
              );
            },
            title: Text('Naruto'),
            leading: Image(
                image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: _incluirAfazer,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),

    );
  }
}



