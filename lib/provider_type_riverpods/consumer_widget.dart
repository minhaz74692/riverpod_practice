import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/main.dart';

class RiverpodConsumerWidget extends ConsumerWidget {
  const RiverpodConsumerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(builder: (context, ref, child) {
      var name = ref.watch(nameProvider);
      return Text('RiverpodConsumerWidget:  $name');
    });
  }
}
