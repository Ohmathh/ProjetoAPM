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
                  "O professor de qu??mica Walter White n??o acredita que sua vida possa piorar ainda mais. Quando descobre que tem c??ncer terminal, Walter decide arriscar tudo para ganhar dinheiro enquanto pode, transformando sua van em um laborat??rio de metanfetamina.",
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const EpisodioPage(title: 'Epis??dios'))
                  );
                },child: const Align(
                alignment: Alignment.center,
                child: Text(
                    "Epis??dios",
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


