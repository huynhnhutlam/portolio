import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimatedSection extends StatefulWidget {
  final Widget child;
  final Duration delay;
  final Key sectionKey;

  const AnimatedSection({
    super.key,
    required this.child,
    required this.sectionKey,
    this.delay = Duration.zero,
  });

  @override
  State<AnimatedSection> createState() => _AnimatedSectionState();
}

class _AnimatedSectionState extends State<AnimatedSection> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: widget.sectionKey,
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.1 && !_isVisible) {
          setState(() {
            _isVisible = true;
          });
        }
      },
      child: widget.child
          .animate(target: _isVisible ? 1 : 0)
          .fade(duration: 500.ms, delay: widget.delay)
          .slideY(begin: 0.1, end: 0, duration: 500.ms, curve: Curves.easeOut),
    );
  }
}
