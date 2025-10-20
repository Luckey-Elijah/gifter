import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:gifter/app/router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

enum NavigationBarVariant { menu, rail, bottom }

class NavigationBar extends StatelessWidget {
  const NavigationBar.menu({
    required this.router,
    required this.index,
    super.key,
  }) : _variant = NavigationBarVariant.menu;

  const NavigationBar.rail({
    required this.router,
    required this.index,
    super.key,
  }) : _variant = NavigationBarVariant.rail;

  const NavigationBar.bottom({
    required this.router,
    required this.index,
    super.key,
  }) : _variant = NavigationBarVariant.bottom;

  final int? index;
  final TabsRouter router;
  final NavigationBarVariant _variant;

  @override
  Widget build(BuildContext context) {
    return switch (_variant) {
      NavigationBarVariant.menu => _NavigationBarMenu(router: router, index: index, disableToggle: false),
      NavigationBarVariant.rail => _NavigationBarMenu(router: router, index: index, disableToggle: true),
      NavigationBarVariant.bottom => _NavigationBarBottom(router: router, index: index),
    };
  }
}

class _NavigationBarBottom extends StatelessWidget {
  const _NavigationBarBottom({
    required this.router,
    required this.index,
  });

  final int? index;
  final TabsRouter router;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: Row(
        spacing: 4,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShadTooltip(
            builder: (context) => const Text('Wishlist'),
            child: ShadIconButton.raw(
              variant: index == 0 ? ShadButtonVariant.primary : ShadButtonVariant.secondary,
              icon: const Icon(LucideIcons.gift200),
              onPressed: () async {
                await context.router.navigate(const WishlistRoute());
              },
            ),
          ),
          ShadTooltip(
            builder: (context) => const Text('Profile'),
            child: ShadIconButton.raw(
              variant: index == 1 ? ShadButtonVariant.primary : ShadButtonVariant.secondary,
              icon: const Icon(LucideIcons.user200),
              onPressed: () async {
                await context.router.navigate(const ProfileRoute());
              },
            ),
          ),
          ShadTooltip(
            builder: (context) => const Text('Group'),
            child: ShadIconButton.raw(
              variant: index == 2 ? ShadButtonVariant.primary : ShadButtonVariant.secondary,
              icon: const Icon(LucideIcons.star200),
              onPressed: () async {
                await context.router.navigate(const GroupListRoute());
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _NavigationBarMenu extends StatefulWidget {
  const _NavigationBarMenu({
    required this.router,
    required this.index,
    required this.disableToggle,
  });

  final int? index;
  final TabsRouter router;
  final bool disableToggle;

  @override
  State<_NavigationBarMenu> createState() => _NavigationBarMenuState();
}

class _NavigationBarMenuState extends State<_NavigationBarMenu> {
  late bool expanded = !widget.disableToggle;

  @override
  void didUpdateWidget(covariant _NavigationBarMenu oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.disableToggle != oldWidget.disableToggle) {
      expanded = !widget.disableToggle;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: expanded ? 180 : 54,
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (expanded) ...[
            ShadButton.raw(
              variant: widget.index == 0 ? ShadButtonVariant.primary : ShadButtonVariant.secondary,
              leading: const Icon(LucideIcons.gift200),
              child: const Text('Wishlist'),
              onPressed: () async {
                await context.router.navigate(const WishlistRoute());
              },
            ),
            ShadButton.raw(
              variant: widget.index == 1 ? ShadButtonVariant.primary : ShadButtonVariant.secondary,
              leading: const Icon(LucideIcons.user200),
              child: const Text('Profile'),
              onPressed: () async {
                await context.router.navigate(const ProfileRoute());
              },
            ),
            ShadButton.raw(
              variant: widget.index == 2 ? ShadButtonVariant.primary : ShadButtonVariant.secondary,
              leading: const Icon(LucideIcons.user200),
              child: const Text('Group'),
              onPressed: () async {
                await context.router.navigate(const GroupListRoute());
              },
            ),
          ] else ...[
            ShadTooltip(
              builder: (context) => const Text('Wishlist'),
              child: ShadIconButton.raw(
                variant: widget.index == 0 ? ShadButtonVariant.primary : ShadButtonVariant.secondary,
                icon: const Icon(LucideIcons.gift200),
                onPressed: () async {
                  await context.router.navigate(const WishlistRoute());
                },
              ),
            ),
            ShadTooltip(
              builder: (context) => const Text('Profile'),
              child: ShadIconButton.raw(
                variant: widget.index == 1 ? ShadButtonVariant.primary : ShadButtonVariant.secondary,
                icon: const Icon(LucideIcons.user200),
                onPressed: () async {
                  await context.router.navigate(const ProfileRoute());
                },
              ),
            ),
            ShadTooltip(
              builder: (context) => const Text('Group'),
              child: ShadIconButton.raw(
                variant: widget.index == 2 ? ShadButtonVariant.primary : ShadButtonVariant.secondary,
                icon: const Icon(LucideIcons.star200),
                onPressed: () async {
                  await context.router.navigate(const GroupListRoute());
                },
              ),
            ),
          ],
          const Spacer(),
          if (!widget.disableToggle)
            ShadTooltip(
              builder: (context) => expanded ? const Text('Collapse') : const Text('Expand'),
              child: ShadIconButton.secondary(
                icon: expanded
                    ? const Icon(LucideIcons.arrowLeftToLine200)
                    : const Icon(LucideIcons.arrowRightToLine200),
                onPressed: () => setState(() => expanded = !expanded),
              ),
            ),
        ],
      ),
    );
  }
}
