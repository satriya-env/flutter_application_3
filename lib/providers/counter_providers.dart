import 'package:flutter/material.dart';

// class CounterProviders extends StatelessWidget {
//   const CounterProviders({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class CounterProviders extends ChangeNotifier{
  int _count = 0;

  int get count => _count;

  void increment(){
    _count++;
    notifyListeners();
  }
  void decrement(){
    _count--;
    notifyListeners();
  }
}


