part of 'counter_bloc.dart';

@immutable
class CounterState extends Equatable {
  final int value;

  CounterState(this.value);

  @override
  List<Object> get props => [value];
}

class CounterInitial extends CounterState {
  CounterInitial() : super(0);
}
