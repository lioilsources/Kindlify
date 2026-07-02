import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/database/app_database.dart';
import '../../domain/reader_notifier.dart';
import '../../domain/reader_state.dart';
import '../widgets/word_bubble.dart';

class WordCloudPanel extends ConsumerStatefulWidget {
  const WordCloudPanel({super.key, required this.bookSlug});

  final String bookSlug;

  @override
  ConsumerState<WordCloudPanel> createState() => _WordCloudPanelState();
}

class _WordCloudPanelState extends ConsumerState<WordCloudPanel> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(readerNotifierProvider(widget.bookSlug));
    final termsAsync = ref.watch(currentTermsProvider(widget.bookSlug));
    final notifier = ref.read(readerNotifierProvider(widget.bookSlug).notifier);

    return GestureDetector(
      onScaleUpdate: (details) {
        if (details.pointerCount == 2) {
          setState(() => _scale = details.scale);
        }
      },
      onScaleEnd: (details) {
        if (_scale < 0.92) {
          notifier.navigateUp();
        }
        setState(() => _scale = 1.0);
      },
      child: termsAsync.when(
        data: (terms) => _buildCloud(
          context,
          terms.cast<Term>(),
          state,
          notifier,
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }

  Widget _buildCloud(
    BuildContext context,
    List<Term> terms,
    ReaderState state,
    ReaderNotifier notifier,
  ) {
    if (terms.isEmpty) {
      return Center(
        child: Text(
          'Žádné termíny',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      );
    }

    return WordCloudLayout(
      terms: terms,
      selectedWords: state.selectedWords,
      pinnedWords: state.pinnedWords,
      onTermTap: notifier.toggleWord,
      maxVisible: 40,
      onMoreTap: () => _showMoreSheet(context, terms, state, notifier),
    );
  }

  void _showMoreSheet(
    BuildContext context,
    List<Term> allTerms,
    ReaderState state,
    ReaderNotifier notifier,
  ) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => _TermsBottomSheet(
        terms: allTerms,
        selectedWords: state.selectedWords,
        onToggle: notifier.toggleWord,
      ),
    );
  }
}

class _TermsBottomSheet extends StatefulWidget {
  const _TermsBottomSheet({
    required this.terms,
    required this.selectedWords,
    required this.onToggle,
  });

  final List<Term> terms;
  final List<String> selectedWords;
  final void Function(String) onToggle;

  @override
  State<_TermsBottomSheet> createState() => _TermsBottomSheetState();
}

class _TermsBottomSheetState extends State<_TermsBottomSheet> {
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final filtered = widget.terms
        .where(
          (t) => _query.isEmpty || t.term.toLowerCase().contains(_query.toLowerCase()),
        )
        .toList()
      ..sort((a, b) => b.score.compareTo(a.score));

    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 0.95,
      minChildSize: 0.3,
      expand: false,
      builder: (_, scrollCtrl) => Column(
        children: [
          const SizedBox(height: 12),
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.outlineVariant,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Hledat termíny...',
                prefixIcon: const Icon(Icons.search, size: 20),
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
              ),
              onChanged: (v) => setState(() => _query = v),
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: scrollCtrl,
              itemCount: filtered.length,
              itemBuilder: (_, i) {
                final t = filtered[i];
                final sel = widget.selectedWords.contains(t.term);
                return ListTile(
                  dense: true,
                  title: Text(t.term),
                  trailing: sel
                      ? const Icon(Icons.check_circle, color: Colors.blue)
                      : null,
                  onTap: () => widget.onToggle(t.term),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
