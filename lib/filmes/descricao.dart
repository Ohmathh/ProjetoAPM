import 'package:flutter/material.dart';

import 'assistir.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: NetworkImage('data:image/jpeg;base64,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'),
            ),
            Padding(
              padding: const EdgeInsets.only(left:50, right: 50.0, top: 50.0),
              child: Text(
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                ),
                  "Durante o final da Segunda Guerra Mundial, o sargento Don 'Wardaddy' lidera um grupo de apenas cinco soldados americanos encarregado de aniquilar os nazistas.",
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AssistirPage(title: 'Assistir'))
                  );
                },child: const Align(
                alignment: Alignment.center,
                child: Text(
                    "Assistir",
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.center
                ),
              ))
              ),
          ],
        ),
      )
    );
  }
}


