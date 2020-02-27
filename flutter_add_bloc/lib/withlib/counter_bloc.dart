import 'package:flutter_add_bloc/withlib/counter_event.dart';
import 'package:flutter_add_bloc/withlib/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  void onIncrement() {
    this.add(IncrementEvent());
  }

  void onDecrement() {
    this.add(DecrementEvent());
  }

  @override
  CounterState get initialState => CounterState.initial();

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      yield state..counter += 1;
    } else if (event is DecrementEvent) {
      yield state..counter -= 1;
    }
  }
}
