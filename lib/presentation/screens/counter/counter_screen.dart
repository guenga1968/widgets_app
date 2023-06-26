import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {

  static const String name = 'Counter Screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounter = ref.watch(counterProvider);
    //final bool isDarkMode = ref.watch(isDarkModeProvider);
    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(onPressed: (){
           // ref.read(isDarkModeProvider.notifier).update((state) => !state);
           ref.read(themeNotifierProvider.notifier).toggleDarkMode();
          }, icon:Icon(isDarkMode ? Icons.dark_mode_outlined: Icons.light_mode_outlined),
           ),
        ],
      ),
      body:  Center(
        child: Text('Valor: $clickCounter', style: Theme.of(context).textTheme.titleLarge,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state ++;
          //Otra forma
          //ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
