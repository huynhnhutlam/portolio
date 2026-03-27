import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../widgets/section_title.dart';
import '../widgets/social_links.dart';
import '../data/mock_data.dart';
import '../core/utils/responsive.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    final l10n = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            title: l10n.contactTitle,
            subtitle: l10n.contactSubtitle,
          ),
          if (isMobile)
            const SizedBox(height: 48),
          if (isMobile)
            _buildContactForm(context, l10n),
          if (!isMobile)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.contactDescription,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.6),
                      ),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          const SizedBox(width: 16),
                          Text(
                            MockData.contactEmail,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      const SocialLinks(),
                    ],
                  ),
                ),
                const SizedBox(width: 80),
                Expanded(
                  flex: 3,
                  child: _buildContactForm(context, l10n),
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildContactForm(BuildContext context, AppLocalizations l10n) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withAlpha(20),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ContactField(
            label: l10n.contactFieldName,
            hint: l10n.contactFieldHintName,
          ),
          const SizedBox(height: 24),
          _ContactField(
            label: l10n.contactFieldEmail,
            hint: l10n.contactFieldHintEmail,
          ),
          const SizedBox(height: 24),
          _ContactField(
            label: l10n.contactFieldMessage,
            hint: l10n.contactFieldHintMessage,
            maxLines: 5,
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(l10n.contactSendBtn),
            ),
          ),
        ],
      ),
    );
  }
}

class _ContactField extends StatelessWidget {
  final String label;
  final String hint;
  final int maxLines;

  const _ContactField({
    required this.label,
    required this.hint,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: Theme.of(context).colorScheme.surface,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
