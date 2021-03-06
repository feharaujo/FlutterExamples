import 'package:flutter/material.dart';
import 'package:flutter_add_bloc/withlib/counter_bloc.dart';
import 'package:flutter_add_bloc/withlib/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocPage extends StatefulWidget {
  BlocPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BlocPageState createState() => _BlocPageState();
}

class _BlocPageState extends State<BlocPage> {
  final _counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _counterBloc,
      child: CounterWidget(widget: widget),
    );
  }

  @override
  void dispose() {
    _counterBloc.close();
    super.dispose();
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final BlocPage widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder(
        bloc: BlocProvider.of<CounterBloc>(context),
        builder: (context, CounterState state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${state.counter}',
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => BlocProvider.of<CounterBloc>(context).onIncrement(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () => BlocProvider.of<CounterBloc>(context).onDecrement(),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
