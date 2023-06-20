import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const String name ='ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI - Controls'),
      ),
      body: const _UiControlsView(),
      floatingActionButton: FloatingActionButton(onPressed: (){},child:const Icon(Icons.play_arrow),),
    );
  }
}

class _UiControlsView extends StatelessWidget {
  const _UiControlsView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: Text(''),
          value: true, onChanged: (value) {
          
        },),
      ],
    );
  }
}