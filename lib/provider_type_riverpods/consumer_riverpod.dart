import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/main.dart';

class RiverpodConsumer extends StatelessWidget {
  const RiverpodConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      var name = ref.watch(nameProvider);
      return Text('RiverpodConsumer: $name');
    });
  }
}
