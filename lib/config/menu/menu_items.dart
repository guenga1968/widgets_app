import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios Botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
       MenuItem(
      title: 'Tarjetas',
      subtitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
      MenuItem(
      title: 'Progres Indicators',
      subtitle: 'Generales y Controlados',
      link: '/progres',
      icon: Icons.refresh_rounded),
      MenuItem(
      title: 'Snack Bars y dialogs',
      subtitle: 'Indicadores en Pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
];
