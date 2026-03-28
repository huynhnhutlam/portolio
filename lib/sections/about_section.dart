import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../widgets/section_title.dart';
import '../data/mock_data.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            title: l10n.aboutTitle,
            subtitle: l10n.aboutSubtitle,
          ),
          const SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  l10n.aboutDescription,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        height: 1.8,
                        fontSize: 16,
                      ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox.shrink(),
              ),
            ],
          ),
          const SizedBox(height: 40),
          _buildQuickStats(context, l10n),
        ],
      ),
    );
  }

  Widget _buildQuickStats(BuildContext context, AppLocalizations l10n) {
    String langCode = Localizations.localeOf(context).languageCode;
    
    return Wrap(
      spacing: 40,
      runSpacing: 40,
      children: MockData.stats.map((stat) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              stat.value,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              stat.label.get(langCode),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        );
      }).toList(),
    );
  }
}
