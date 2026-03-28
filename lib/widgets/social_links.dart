import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/mock_data.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () => _launchUrl(MockData.githubLink),
          icon: const FaIcon(FontAwesomeIcons.github),
          tooltip: 'GitHub',
        ),
        const SizedBox(width: 8),
        IconButton(
          onPressed: () => _launchUrl(MockData.linkedinLink),
          icon: const FaIcon(FontAwesomeIcons.linkedinIn),
          tooltip: 'LinkedIn',
        ),
        const SizedBox(width: 8),
        IconButton(
          onPressed: () => _launchUrl('mailto:${MockData.contactEmail}'),
          icon: const FaIcon(FontAwesomeIcons.envelope),
          tooltip: 'Email',
        ),
      ],
    );
  }
}
