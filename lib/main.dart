// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/provider_type_riverpods/consumer_riverpod.dart';
import 'package:riverpod_practice/provider_type_riverpods/consumer_widget.dart';
import 'package:riverpod_practice/provider_type_riverpods/riverpod_statefullwidget.dart';
import 'package:riverpod_practice/state_notifier_provider_riverpods/state_notifier_provider.dart';
import 'package:riverpod_practice/stateprovider_type_riverpods/stateprovider_rp.dart';

final nameProvider = Provider<String>((ref) => 'Riverpod App');

final counterProvider = StateProvider<int>((ref) => 0);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Riverpod Counter App',
          home: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RiverpodConsumerWidget(),
            RiverpodConsumer(),
            RiverpodStatefull(),
            StateProviderRp(),
            StateNotifierProviderWidget(),
          ],
        ),
      ),
    );
  }
}
