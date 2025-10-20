import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:gifter/app/router.dart';
import 'package:gifter/navigation/navigation_bar.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadResponsiveBuilder(
      builder: (context, breakpoint) {
        final breakpoints = ShadTheme.of(context).breakpoints;

        const key = ValueKey('Navigation Bar');
        const routes = [WishlistRoute(), ProfileRoute(), GroupListRoute()];

        return AutoTabsRouter(
          routes: routes,
          builder: (context, child) {
            final router = AutoTabsRouter.of(context, watch: true);
            if (breakpoint >= breakpoints.sm) {
              final medium = breakpoint >= breakpoints.md;
              return Row(
                children: [
                  if (medium)
                    NavigationBar.menu(key: key, router: router, index: router.activeIndex)
                  else
                    NavigationBar.rail(key: key, router: router, index: router.activeIndex),

                  const ShadSeparator.vertical(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: child,
                    ),
                  ),
                ],
              );
            }

            return Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),

                    child: child,
                  ),
                ),
                const ShadSeparator.horizontal(),
                NavigationBar.bottom(
                  key: key,
                  router: router,
                  index: router.activeIndex,
                ),
              ],
            );
          },
        );
      },
    );
  }
}
