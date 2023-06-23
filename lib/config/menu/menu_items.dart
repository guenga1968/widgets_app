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
      MenuItem(
      title: 'Animated Container',
      subtitle: 'Statefull Widgeds Animados',
      link: '/animated',
      icon: Icons.check_box_outline_blank),
      MenuItem(
      title: 'UI controls + tiles',
      subtitle: 'Una serie de controles de flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
      MenuItem(
      title: 'Introducción a la Aplicación',
      subtitle: 'Pequeño tutorial sobre la aplicación',
      link: '/tutorial',
      icon: Icons.accessible_rounded),
];
