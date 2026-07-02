import 'package:flutter/material.dart';

import '../../../../core/database/app_database.dart';

class WordBubble extends StatelessWidget {
  const WordBubble({
    super.key,
    required this.term,
    required this.fontSize,
    required this.isSelected,
    required this.isPinned,
    required this.onTap,
    this.termKind = 'word',
  });

  final String term;
  final double fontSize;
  final bool isSelected;
  final bool isPinned;
  final VoidCallback onTap;
  final String termKind;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Color bg;
    final Color fg;
    final Border? border;

    if (isSelected) {
      bg = theme.colorScheme.primary;
      fg = theme.colorScheme.onPrimary;
      border = null;
    } else if (termKind == 'entity') {
      bg = theme.colorScheme.secondaryContainer;
      fg = theme.colorScheme.onSecondaryContainer;
      border = null;
    } else if (termKind == 'phrase') {
      bg = theme.colorScheme.tertiaryContainer;
      fg = theme.colorScheme.onTertiaryContainer;
      border = null;
    } else {
      bg = theme.colorScheme.surfaceContainerHighest;
      fg = theme.colorScheme.onSurface;
      border = null;
    }

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        // No constraints — let content size naturally so Wrap places bubbles correctly.
        padding: EdgeInsets.symmetric(
          horizontal: fontSize * 0.6,
          vertical: fontSize * 0.35,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
        decoration: BoxDecoration(
          color: bg,
          border: border,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          term,
          style: TextStyle(
            fontSize: fontSize,
            color: fg,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            height: 1.2,
          ),
        ),
      ),
    );
  }
}

/// Computes font size for a term given its score (0–1).
double bubbleFontSize(double score) => lerpDouble(11.0, 22.0, score.clamp(0.0, 1.0))!;

double? lerpDouble(double a, double b, double t) => a + (b - a) * t;

/// Builds a word cloud layout from a list of terms.
/// Sorted by score DESC, row-filled left to right.
class WordCloudLayout extends StatelessWidget {
  const WordCloudLayout({
    super.key,
    required this.terms,
    required this.selectedWords,
    required this.pinnedWords,
    required this.onTermTap,
    this.maxVisible = 40,
    this.onMoreTap,
  });

  final List<Term> terms;
  final List<String> selectedWords;
  final List<String> pinnedWords;
  final void Function(String term) onTermTap;
  final int maxVisible;
  final VoidCallback? onMoreTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // Pinned words first, then sorted by score.
    final pinned = terms.where((t) => pinnedWords.contains(t.term)).toList();
    final rest = terms.where((t) => !pinnedWords.contains(t.term)).toList()
      ..sort((a, b) => b.score.compareTo(a.score));
    final visible = [...pinned, ...rest].take(maxVisible).toList();
    final overflow = terms.length - maxVisible;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 0,
          runSpacing: 0,
          children: [
            ...visible.map(
              (t) => WordBubble(
                term: t.term,
                fontSize: bubbleFontSize(t.score),
                isSelected: selectedWords.contains(t.term),
                isPinned: pinnedWords.contains(t.term),
                termKind: t.kind,
                onTap: () => onTermTap(t.term),
              ),
            ),
            if (overflow > 0 && onMoreTap != null)
              GestureDetector(
                onTap: onMoreTap,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.outline.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: theme.colorScheme.outline.withValues(alpha: 0.4),
                    ),
                  ),
                  child: Text(
                    '+$overflow',
                    style: TextStyle(
                      fontSize: 13,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
