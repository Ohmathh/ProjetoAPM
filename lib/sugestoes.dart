import 'package:flutter/material.dart';

class SugestoesPage extends StatefulWidget {
  const SugestoesPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SugestoesPage> createState() => _SugestoesPageState();
}

class _SugestoesPageState extends State<SugestoesPage> {
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
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Nome',
              labelStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontFamily: 'AvenirLight'
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.purple),
              ),
              enabledBorder: new UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey,
                      width: 1.0)
              ),
            ),
            style: TextStyle(
                color: Colors.black87,
                fontSize: 17,
                fontFamily: 'AvenirLight'
            ),
            obscureText: true,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Sugestão',
              labelStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontFamily: 'AvenirLight'
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.purple),
              ),
              enabledBorder: new UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey,
                      width: 1.0)
              ),
            ),
            style: TextStyle(
                color: Colors.black87,
                fontSize: 17,
                fontFamily: 'AvenirLight'
            ),
            obscureText: true,
          ),
          TextButton(
            child: Text('Enviar Sugestão'),
            onPressed: () {
            print('Apertado');
          },
          ),
        ],
      )
    );
  }
}



