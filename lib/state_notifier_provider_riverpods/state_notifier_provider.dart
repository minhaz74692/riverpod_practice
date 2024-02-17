import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterDemo extends StateNotifier<int> {
  CounterDemo() : super(0);

  increment() {
    state++;
  }

  decrement() {
    state--;
  }

  setZoro() {
    state = 0;
  }
}

final demoCounter =
    StateNotifierProvider<CounterDemo, int>((ref) => CounterDemo());

class StateNotifierProviderWidget extends ConsumerWidget {
  const StateNotifierProviderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(demoCounter);
    final counterNotifier = ref.read(demoCounter.notifier);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            counterNotifier.decrement();
          },
          child: Text('Decrease'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('StateNotifier: $counter'),
        ),
        ElevatedButton(
          onPressed: () {
            counterNotifier.increment();
          },
          child: Text('Increase'),
        ),
        IconButton(
          onPressed: () {
            counterNotifier.setZoro();
          },
          icon: Icon(Icons.refresh),
        ),
      ],
    );
  }
}
