import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';
import '../core/utils/responsive.dart';
import '../data/mock_data.dart';
import '../widgets/social_links.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onContactPressed;

  const HeroSection({super.key, required this.onContactPressed});

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);

    return Container(
      constraints: const BoxConstraints(minHeight: 600),
      height: MediaQuery.of(context).size.height * 0.9,
      child: isMobile
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAvatar(context),
                const SizedBox(height: 32),
                _buildTextContent(context, true),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex: 3, child: _buildTextContent(context, false)),
                Expanded(flex: 2, child: _buildAvatar(context)),
              ],
            ),
    );
  }

  Widget _buildTextContent(BuildContext context, bool isMobile) {
    final l10n = AppLocalizations.of(context)!;
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: isMobile
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          l10n.heroHello,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          MockData.myName,
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
            fontWeight: FontWeight.bold,
            height: 1.1,
          ),
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
        ),
        const SizedBox(height: 16),
        Text(
          l10n.myRole,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Theme.of(context).textTheme.bodySmall?.color,
          ),
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
        ),
        const SizedBox(height: 24),
        Text(
          l10n.myDescription,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.6),
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 48),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: onContactPressed,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 20,
                ),
              ),
              child: Text(l10n.heroContactBtn),
            ),
            OutlinedButton(
              onPressed: () async {
                final uri = Uri.parse(MockData.resumeLink);
                if (!await launchUrl(uri)) {
                  debugPrint('Could not launch resume link');
                }
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 20,
                ),
              ),
              child: Text(l10n.heroDownloadBtn),
            ),
          ],
        ),
        const SizedBox(height: 48),
        const SocialLinks(),
      ],
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return Center(
      child: Container(
        width: Responsive.isMobile(context) ? 200 : 350,
        height: Responsive.isMobile(context) ? 200 : 350,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primary.withAlpha(50),
              Theme.of(context).colorScheme.secondary.withAlpha(50),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.primary.withAlpha(30),
              blurRadius: 30,
              spreadRadius: 10,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            child: const Icon(Icons.person, size: 100, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
