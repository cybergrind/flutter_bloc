part of 'counter_bloc.dart';

@immutable
class CounterState {
  final int value;

  CounterState(this.value);
}

class CounterInitial extends CounterState {
  CounterInitial() : super(0);
}
