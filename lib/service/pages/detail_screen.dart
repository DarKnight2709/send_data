import 'package:flutter/material.dart';
import 'package:send_data/service/todo.dart';

class DetailScreen extends StatelessWidget {

  const DetailScreen({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title)
      )
      ,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(todo.description)
      )
    );
  }
}