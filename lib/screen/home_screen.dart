import 'package:flutter/material.dart';
import 'package:riverpod_ex/layout/default_layout.dart';
import 'package:riverpod_ex/screen/provider_screen.dart';
import 'package:riverpod_ex/screen/select_provider_screen.dart';
import 'package:riverpod_ex/screen/state_notifier_provider_screen.dart';
import 'package:riverpod_ex/screen/state_provider_screen.dart';
import 'package:riverpod_ex/screen/stream_provider_screen.dart';

import 'auto_dispose_modifier_screen.dart';
import 'code_generation_screen.dart';
import 'family_modifier_screen.dart';
import 'future_provider_screen.dart';
import 'listen_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        title: 'HomeScreen',
        body: ListView(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const StateProviderScreen()));
            }, child: const Text('StateProviderScreen')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const StateNotifierProviderScreen()));
            }, child: const Text('StateNotifierProviderScreen')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FutureProviderScreen()));
            }, child: const Text('FutureProviderScreen')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const StreamProviderScreen()));
            }, child: const Text('StreamProviderScreen')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FamilyModifierScreen()));
            }, child: const Text('FamilyModifierScreen')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const AutoDisposeModifierScreen()));
            }, child: const Text('AutoDisposeModifierScreen')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ListenProviderScreen()));
            }, child: const Text('ListenProviderScreen')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SelectProviderScreen()));
            }, child: const Text('SelectProviderScreen')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ProviderScreen()));
            }, child: const Text('ProviderScreen')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CodeGenerationScreen()));
            }, child: const Text('CodeGenerationScreen'))
          ],
        ));
  }
}
