import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_student_app/features/settings/logic/cubit/theme_cubit.dart';

class ThemeSettingItem extends StatelessWidget {
  const ThemeSettingItem({super.key});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodyLarge?.color;
    final themeMode = context.watch<ThemeCubit>().state;

    return ListTile(
      leading: Icon(Icons.dark_mode_outlined, color: textColor),
      title: Text(
        'Theme',
        style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        _themeName(themeMode),
        style: TextStyle(color: textColor?.withValues(alpha: 0.6)),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Column(
              children: [
                _buildThemeOption(
                  context,
                  title: 'System default',
                  themeMode: ThemeMode.system,
                  currentMode: themeMode,
                ),
                _buildThemeOption(
                  context,
                  title: 'Light',
                  themeMode: ThemeMode.light,
                  currentMode: themeMode,
                ),
                _buildThemeOption(
                  context,
                  title: 'Dark',
                  themeMode: ThemeMode.dark,
                  currentMode: themeMode,
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildThemeOption(
    BuildContext context, {
    required String title,
    required ThemeMode themeMode,
    required ThemeMode currentMode,
  }) {
    return ListTile(
      title: Text(title),
      trailing: currentMode == themeMode ? const Icon(Icons.check) : null,
      onTap: () {
        context.read<ThemeCubit>().setTheme(themeMode);
        Navigator.pop(context);
      },
    );
  }

  String _themeName(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.system:
        return 'System default';
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
    }
  }
}
