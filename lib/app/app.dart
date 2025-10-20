import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gifter/app/router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return ShadApp.router(
      routerConfig: router.config(),
      theme: ShadThemeData(
        brightness: Brightness.dark,
        colorScheme: const ShadSlateColorScheme.light(),
        separatorTheme: const ShadSeparatorTheme(
          horizontalMargin: EdgeInsets.zero,
          verticalMargin: EdgeInsets.zero,
        ),
      ),
    );
  }
}
