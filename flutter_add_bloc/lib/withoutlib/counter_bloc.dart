import 'dart:async';

import 'package:flutter_add_bloc/withoutlib/counter_event.dart';

class CounterBloc {
  int _counter = 0;

  // COUNTER (NUMBER) STREAM CONTROLLER

  final _counterStateController = StreamController<int>();

  StreamSink<int> get _inCounter => _counterStateController.sink;

  // for state, exposing only a stream which outputs data
  Stream<int> get counter => _counterStateController.stream;

  // -----------------------------------------------------------------------

  // EVENTS (INCREMENT AND DECREMENT) SINK CONTROLLER

  final _counterEventController = StreamController<CounterEvent>();

  // for events, exposing only a sink which is an input
  Sink<CounterEvent> get counterEventSink => _counterEventController.sink;

  CounterBloc() {
    // whenever there is a new event, we want to map it to a new state
    _counterEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(CounterEvent event) {
    if (event is IncrementEvent) {
      _counter++;
    } else {
      _counter--;
    }

    _inCounter.add(_counter);
  }

  void dispose() {
    _counterEventController.close();
    _counterStateController.close();
  }
}
