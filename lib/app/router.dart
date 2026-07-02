import 'package:go_router/go_router.dart';

import '../features/library/presentation/library_screen.dart';
import '../features/reader/presentation/reader_screen.dart';
import '../features/settings/presentation/settings_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LibraryScreen(),
    ),
    GoRoute(
      path: '/reader/:slug',
      builder: (_, state) {
        final slug = state.pathParameters['slug']!;
        return ReaderScreen(bookSlug: slug);
      },
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);
