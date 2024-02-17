import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/main.dart';

class RiverpodStatefull extends ConsumerStatefulWidget {
  const RiverpodStatefull({super.key});

  @override
  ConsumerState<RiverpodStatefull> createState() => _RiverpodStatefullState();
}

class _RiverpodStatefullState extends ConsumerState<RiverpodStatefull> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var name = ref.read(nameProvider);
    debugPrint('The App name: $name');
  }

  @override
  Widget build(BuildContext context) {
    var name = ref.watch(nameProvider);
    return Text('RiverpodStatefull: $name');
  }
}
