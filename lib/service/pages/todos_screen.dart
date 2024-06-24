import 'package:flutter/material.dart';
import 'package:send_data/service/pages/detail_screen.dart';
import 'package:send_data/service/todo.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos')
      )

      ,
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index){

          return ListTile(
            title: Text(todos[index].title),
            onTap: (){

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index])
                )
              );
            }
          );
        },
        
        
      )
    );
  }
}