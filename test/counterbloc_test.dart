import 'package:bloc_test/bloc_test.dart';
import 'package:block_test_app/logic/bloc/bloc/counter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterTest', () {
    blocTest('CounterTest',
        build: () => CounterBloc(),
        act: (c) => c.add(Increase()),
        expect: [CounterState(1)]);
  });
}
