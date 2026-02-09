import 'package:flutter/material.dart';
import 'package:flutter_application_3/providers/counter_providers.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterProviders>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manajemen State Provider'),
      ),

      body: Center(
        child: Text(
          'Nilai Counter: ${counter.count}',
          style: const TextStyle(fontSize: 24),
        ),
        
      ),
      
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: counter.increment,
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: counter.decrement,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}