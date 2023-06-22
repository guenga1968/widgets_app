import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI - Controls'),
      ),
      body: const _UiControlsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, bus, train, plane, boat }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransport = Transportation.car;
  bool wantsCena = false;
  bool wantsDesayuno = false;
  bool wantsAlmuerzo = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles Adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Medios de Transporte'),
          subtitle: Text('$selectedTransport'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar en auto'),
              value: Transportation.car,
              groupValue: selectedTransport,
              onChanged: (value) => setState(() {
                selectedTransport = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By Bus'),
              subtitle: const Text('Viajar en colectivo'),
              value: Transportation.bus,
              groupValue: selectedTransport,
              onChanged: (value) => setState(() {
                selectedTransport = Transportation.bus;
              }),
            ),
            RadioListTile(
              title: const Text('By Train'),
              subtitle: const Text('Viajar en tren'),
              value: Transportation.train,
              groupValue: selectedTransport,
              onChanged: (value) => setState(() {
                selectedTransport = Transportation.train;
              }),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viajar en avión'),
              value: Transportation.plane,
              groupValue: selectedTransport,
              onChanged: (value) => setState(() {
                selectedTransport = Transportation.plane;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Desayuno ?'),
          value: wantsDesayuno,
          onChanged: (value) => setState(() {
            wantsDesayuno = !wantsDesayuno;
          }),
        ),
        CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: wantsAlmuerzo,
          onChanged: (value) => setState(() {
            wantsAlmuerzo = !wantsAlmuerzo;
          }),
        ),
        CheckboxListTile(
          title: const Text('Cena ?'),
          value: wantsCena,
          onChanged: (value) => setState(() {
            wantsCena = !wantsCena;
          }),
        ),
      ],
    );
  }
}
