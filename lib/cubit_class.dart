
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class MyState {
  final String name;
  final int number;
  final Color color;

  MyState({required this.name, required this.number, required this.color});
}

class MyCubit extends Cubit<MyState> {
  MyCubit()
      : super(MyState(name: "state1", number: 0, color: Colors.deepOrange));


  void changeData() {
    emit(MyState(name: "state2", number: 1, color: Colors.teal));
  }
  void reset() => emit(MyState(name: "state1", number: 0, color: Colors.deepOrange));
}






