import 'package:flutter/material.dart';
import 'package:flutter_basics/lessons/week_2/18_bloc_section_1/cubit/counter/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterMainPage extends StatelessWidget {
  const CounterMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter BLoC (Cubit)"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).decrement();

              //BlocProvider.of<CounterBloc>(context).add(DecrementCounterEvent());
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).increment();

              //BlocProvider.of<CounterBloc>(context).add(IncrementCounterEvent());
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, int>(
              builder: (context, counter) {
                return Text("$counter", style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w400));
              },
            ),
            const SizedBox(height: 10),
            const Text("Click the add counter to see the magic"),
          ],
        ),
      ),
    );
  }
}
