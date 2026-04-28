import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodoPage(),
    );
  }
}

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final List<String> _todos = [];
  final TextEditingController _controller = TextEditingController();

  void _addTodo() {
    if (_controller.text.isEmpty) return;

    setState(() {
      _todos.add(_controller.text);
      _controller.clear();
    });
  }

  void _removeTodo(int index) {
    setState(() {
      _todos.removeAt(index);
    });
  }

  void _removeAllTodos() {
    setState(() {
      _todos.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your To-Do App')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'What do you need to do today?',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: _addTodo,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_todos[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _removeTodo(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: _removeAllTodos,
        child: Container(
          height: 120,
          color: Colors.black87,
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(20),
          child: const Text(
            'Delete all tasks',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),   
      ),
    ),
  );
  }
}
