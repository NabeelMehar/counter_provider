import 'package:counter_provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  SecondPage();

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Consumer<CounterProvider>(
                  builder: (context, refresedData, _) {
                  return Text(
                    refresedData.count.toString(),
                    style: TextStyle(fontSize: 25),
                  );
                }),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          context.read<CounterProvider>().incrementCounter();
        }));
  }
}
