import 'package:flutter/material.dart';

class ProgresScreen extends StatelessWidget {

  static const String name ='progres_screen';

  const ProgresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Progres Screen'),
      ),
      body: const _ProgresView(),
    );
  }
}

class _ProgresView extends StatelessWidget {
  const _ProgresView();

  @override
  Widget build(BuildContext context) {
    return const  Center(
      child: Column(
        children: [
          SizedBox( height: 30 ),
          Text('Circular Progres Indicator'),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 3,backgroundColor: Colors.black26,),
          SizedBox( height: 30 ),
          Text('Progres Indicator Controlado'),
           SizedBox(height: 10,),
           _ControlledProgresIndicator()
        ],
      ),
    );
  }
}

class _ControlledProgresIndicator extends StatelessWidget {
  const _ControlledProgresIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300),(value){
        return (value * 2)/100;
      }).takeWhile((element) => element<100),
      builder: (context, snapshot) {

        final progresValue = snapshot.data ??0;
        return  Padding(
          padding:const  EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(value: progresValue, strokeWidth: 2,backgroundColor: Colors.black12,),
              const SizedBox(width: 20,),
              Expanded(child: LinearProgressIndicator(value: progresValue,),)
            ],
          ),
          );
      }
    );
  }
}