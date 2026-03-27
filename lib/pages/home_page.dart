import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../widgets/navbar.dart';
import '../widgets/animated_section.dart';
import '../sections/hero_section.dart';
import '../sections/about_section.dart';
import '../sections/skills_section.dart';
import '../sections/experience_section.dart';
import '../sections/projects_section.dart';
import '../sections/services_section.dart';
import '../sections/certifications_section.dart';
import '../sections/contact_section.dart';
import '../sections/footer_section.dart';

class HomePage extends StatefulWidget {
  final VoidCallback onThemeToggle;
  final VoidCallback onLangToggle;
  final bool isDark;

  const HomePage({
    super.key,
    required this.onThemeToggle,
    required this.onLangToggle,
    required this.isDark,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> _sectionKeys = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i <= 7; i++) {
      _sectionKeys.add(GlobalKey());
    }
  }

  void _scrollToSection(int index) {
    final key = _sectionKeys[index + 1];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final List<String> menus = [
      l10n.menuAbout,
      l10n.menuSkills,
      l10n.menuExperience,
      l10n.menuProjects,
      l10n.menuServices,
      l10n.certificationsTitle,
      l10n.menuContact,
    ];

    return Scaffold(
      endDrawer: _buildMobileDrawer(menus),
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 1200),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AnimatedSection(
                              sectionKey: _sectionKeys[0],
                              child: HeroSection(
                                onContactPressed: () => _scrollToSection(6),
                              ),
                            ),
                            AnimatedSection(
                              sectionKey: _sectionKeys[1],
                              child: const AboutSection(),
                            ),
                            AnimatedSection(
                              sectionKey: _sectionKeys[2],
                              child: const SkillsSection(),
                            ),
                            AnimatedSection(
                              sectionKey: _sectionKeys[3],
                              child: const ExperienceSection(),
                            ),
                            AnimatedSection(
                              sectionKey: _sectionKeys[4],
                              child: const ProjectsSection(),
                            ),
                            AnimatedSection(
                              sectionKey: _sectionKeys[5],
                              child: const ServicesSection(),
                            ),
                            AnimatedSection(
                              sectionKey: _sectionKeys[6],
                              child: const CertificationsSection(),
                            ),
                            AnimatedSection(
                              sectionKey: _sectionKeys[7],
                              child: const ContactSection(),
                            ),
                            const FooterSection(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Navbar(
              menus: menus,
              onMenuTapped: _scrollToSection,
              onThemeToggle: widget.onThemeToggle,
              onLangToggle: widget.onLangToggle,
              isDark: widget.isDark,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeInOut,
          );
        },
        tooltip: l10n.backToTop,
        child: const Icon(Icons.arrow_upward),
      ),
    );
  }

  Widget _buildMobileDrawer(List<String> menus) {
    final l10n = AppLocalizations.of(context)!;
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                l10n.mobileMenu,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            ...List.generate(menus.length, (index) {
              return ListTile(
                title: Text(
                  menus[index],
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                onTap: () {
                  Navigator.pop(context);
                  _scrollToSection(index);
                },
              );
            }),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
