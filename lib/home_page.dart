import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // add ini
import 'counter_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterModel>(context);

    return Consumer<CounterModel>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('You have pushed the button this many times:'),
                Text(
                  '${counter.angka}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => counter.increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      }
    );
  }
} 