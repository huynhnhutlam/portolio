import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final year = DateTime.now().year.toString();

    return Container(
      padding: const EdgeInsets.only(top: 80, bottom: 32),
      child: Center(
        child: Column(
          children: [
            Text(
              l10n.footerDesignedBy,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary.withAlpha(150),
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              l10n.footerCopyright(year),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary.withAlpha(150),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
