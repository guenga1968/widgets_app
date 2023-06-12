import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const String name = 'snack_bar_screen';
  const SnackBarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      // barrierDismissible para que si o si tenga que elegir un boton
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text(
            'Pariatur adipisicing commodo anim proident aliqua esse eiusmod. Dolor consectetur qui reprehenderit duis fugiat incididunt exercitation ex. Tempor incididunt cupidatat quis nostrud veniam sit laborum veniam in culpa voluptate quis mollit. Sunt sunt duis consectetur et eiusmod ipsum culpa nulla incididunt aliqua. Magna labore sit occaecat culpa commodo. Ex velit veniam magna Lorem. Et do enim pariatur deserunt.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: () {}, child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Dolore minim tempor dolore consequat. Ullamco excepteur enim do Lorem sit proident non eiusmod consectetur proident. Magna incididunt duis dolore sunt exercitation deserunt enim ad cillum dolore.')
                  ]);
                },
                child: const Text('Licencias Usadas')),
            const SizedBox(
              height: 10,
            ),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar Diálogo')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: const Text('Mostrar SnackBar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
