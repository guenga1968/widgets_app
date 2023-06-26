
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Listado de colores inmutables

final colorListProvider = Provider((ref) => colorList);


//final selectedColorProvider = StateProvider((ref) => 0);


//Theme Notifier Provider

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier,AppTheme>((ref) => ThemeNotifier())  ;


class ThemeNotifier extends StateNotifier <AppTheme>{
  ThemeNotifier(): super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }
  void changeColorIndex(int index){
    state = state.copyWith(selectedColor: index);
  }
}
