import 'package:flutter/material.dart';

class ToListPage extends StatefulWidget {
  const ToListPage({ Key? key }) : super(key: key);

  @override
  State<ToListPage> createState() => _ToListPageState();
}

class _ToListPageState extends State<ToListPage> {
  TextEditingController _textEditingController = TextEditingController();
  List<String> tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Lista de Tarefas'),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
            ),
            Flexible(
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: tarefas.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(tarefas[index]),
                    onLongPress: () {
                      setState(() {
                        tarefas.removeAt(index);
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.teal,
            child: const Icon(Icons.add),
            onPressed: () {
              if(_textEditingController.text.isNotEmpty) {
                setState(() {
                  tarefas.add(_textEditingController.text);
                });
                _textEditingController.clear();
              }
            },
          ),
          FloatingActionButton(
            backgroundColor: Colors.teal,
            child: const Icon(Icons.playlist_remove_sharp),
            onPressed: () {
              setState(() {
                tarefas = [];
              });
              _textEditingController.clear();
            },
          ),
        ],
      ),
    );
  }
}