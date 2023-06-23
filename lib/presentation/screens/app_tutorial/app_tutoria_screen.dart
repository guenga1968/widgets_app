import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Buscar comida',
      'Non amet in occaecat officia commodo minim sunt excepteur ullamco proident nostrud. Eiusmod eu eu velit cupidatat nisi et incididunt est eu. Duis veniam consectetur ullamco tempor nisi ipsum culpa mollit tempor do. Lorem irure aliquip sint cillum nostrud aute amet minim cupidatat magna duis cillum in sit. Ipsum mollit officia ea in mollit ea. Magna nostrud reprehenderit pariatur nostrud non dolor non magna aliqua dolor exercitation minim consectetur anim.',
      'assets/images/1.png'),
  SlideInfo(
      'Entrega rapida',
      'Nostrud cupidatat anim voluptate commodo est et veniam enim eu mollit qui Lorem ullamco. Non occaecat est duis consectetur anim anim do dolore do mollit. Voluptate Lorem laborum eu id excepteur eu quis consequat. Duis amet adipisicing sunt officia reprehenderit eiusmod sint ipsum consectetur officia quis ipsum tempor ipsum.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Pariatur laboris consequat consectetur sint mollit. Sint Lorem excepteur proident deserunt fugiat. Ipsum qui eu et anim elit sint cupidatat ea duis ad exercitation consequat. Minim qui laboris in esse ipsum proident excepteur exercitation fugiat quis aute officia. Sunt occaecat ad deserunt dolor aliqua ex occaecat tempor mollit enim veniam elit. In nulla cupidatat id ipsum officia cillum. Lorem sint aliquip laboris aliquip consequat quis ad aliquip adipisicing irure ad.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const String name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides
            .map(
              (slideData) => _Slide(
                  title: slideData.title,
                  caption: slideData.caption,
                  imageUrl: slideData.imageUrl),
            )
            .toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Column(
          children: [
            Image(
              image: AssetImage(imageUrl),
            ),
          ],
        ),
      ),
    );
  }
}
