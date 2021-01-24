import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial());

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    switch (event.runtimeType) {
      case Increment:
        print('yield counter + 1');
        yield CounterState(this.state.value + 1);
        break;
      case Decrement:
        yield CounterState(this.state.value - 1);
        break;
      default:
        print('Default');
    }
  }
}
