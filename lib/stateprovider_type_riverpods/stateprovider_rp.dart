// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/main.dart';

class StateProviderRp extends ConsumerWidget {
  const StateProviderRp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);

    ref.listen(counterProvider, ((prev, next) {
      if (next == 5) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('The number is : $next')));
      }
    }));
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // ref.read(counterProvider.notifier).state = 0;
              // ref.invalidate(counterProvider);

              // ignore: unused_result
              ref.refresh(counterProvider);
            },
            child: const Text('Reset State'),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            count.toString(),
          ),
          SizedBox(
            width: 20,
          ),
          ElevatedButton(
            onPressed: () {
              // ref.read(counterProvider.notifier).state++;
              ref.read(counterProvider.notifier).update((state) => state + 1);
            },
            child: const Text('StateProvider RP'),
          ),
        ],
      ),
    );
  }
}
