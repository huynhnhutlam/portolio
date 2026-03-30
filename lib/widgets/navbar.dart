import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../core/utils/responsive.dart';

class Navbar extends StatelessWidget {
  final List<String> menus;
  final Function(int) onMenuTapped;
  final VoidCallback onThemeToggle;
  final VoidCallback onLangToggle;
  final bool isDark;

  const Navbar({
    super.key,
    required this.menus,
    required this.onMenuTapped,
    required this.onThemeToggle,
    required this.onLangToggle,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    final l10n = AppLocalizations.of(context)!;
    bool isVi = Localizations.localeOf(context).languageCode == 'vi';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor.withAlpha(240),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withAlpha(5),
            offset: const Offset(0, 2),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLogo(context),
          if (!isMobile)
            Row(
              children: [
                ...List.generate(menus.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextButton(
                      onPressed: () => onMenuTapped(index),
                      child: Text(
                        menus[index],
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                    ),
                  );
                }),
                IconButton(
                  icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
                  onPressed: onThemeToggle,
                  color: Theme.of(context).colorScheme.primary,
                  tooltip: l10n.toggleTheme,
                ),
                TextButton(
                  onPressed: onLangToggle,
                  child: Text(
                    isVi ? l10n.langVi : l10n.langEn,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          if (isMobile)
            Row(
              children: [
                TextButton(
                  onPressed: onLangToggle,
                  child: Text(
                    isVi ? l10n.langVi : l10n.langEn,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
                  onPressed: onThemeToggle,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Builder(builder: (context) {
                  return IconButton(
                    icon: const Icon(Icons.menu),
                    color: Theme.of(context).colorScheme.primary,
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  );
                }),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    return Text(
      '<LH />',
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.secondary,
            letterSpacing: 2,
          ),
    );
  }
}
