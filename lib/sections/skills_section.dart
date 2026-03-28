import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../models/models.dart';
import '../data/mock_data.dart';
import '../widgets/section_title.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    String langCode = Localizations.localeOf(context).languageCode;
    
    final Map<String, List<Skill>> groupedSkills = {};
    for (var skill in MockData.skills) {
      String cat = skill.category.get(langCode);
      if (!groupedSkills.containsKey(cat)) {
        groupedSkills[cat] = [];
      }
      groupedSkills[cat]!.add(skill);
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            title: l10n.skillsTitle,
            subtitle: l10n.skillsSubtitle,
          ),
          Wrap(
            spacing: 24,
            runSpacing: 40,
            children: groupedSkills.entries.map((entry) {
              return SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entry.key,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: entry.value.map((skill) {
                        return Chip(
                          label: Text(skill.name),
                          backgroundColor: Theme.of(context).colorScheme.surface,
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.primary.withAlpha(50),
                          ),
                          elevation: 2,
                          shadowColor: Colors.black12,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
