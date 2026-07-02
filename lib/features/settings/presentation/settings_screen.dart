import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/settings_repository.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  late TextEditingController _urlController;
  String _locale = 'cs';
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    _urlController = TextEditingController();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final repo = ref.read(settingsRepositoryProvider);
    final url = await repo.getServerUrl();
    final locale = await repo.getLocale();
    if (mounted) {
      setState(() {
        _urlController.text = url;
        _locale = locale;
        _loaded = true;
      });
    }
  }

  @override
  void dispose() {
    _urlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_loaded) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Nastavení')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Server',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _urlController,
            decoration: const InputDecoration(
              labelText: 'URL serveru',
              hintText: 'http://192.168.1.100:8080',
              border: OutlineInputBorder(),
            ),
            onSubmitted: (v) =>
                ref.read(settingsRepositoryProvider).setServerUrl(v),
          ),
          const SizedBox(height: 24),
          Text(
            'Jazyk souhrnů',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 8),
          SegmentedButton<String>(
            segments: const [
              ButtonSegment(value: 'cs', label: Text('Čeština')),
              ButtonSegment(value: 'en', label: Text('English')),
            ],
            selected: {_locale},
            onSelectionChanged: (set) async {
              final locale = set.first;
              setState(() => _locale = locale);
              await ref.read(settingsRepositoryProvider).setLocale(locale);
            },
          ),
        ],
      ),
    );
  }
}
