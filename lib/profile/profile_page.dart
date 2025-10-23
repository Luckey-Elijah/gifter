import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gifter/authentication/authentication_repository.dart';
import 'package:gifter/profile/profile_header.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

@RoutePage()
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        const SliverFloatingHeader(
          child: Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: ProfileHeader(
              profileViewModel: ProfileViewModel(),
            ),
          ),
        ),

        SliverList.list(
          children: [
            ShadButton.destructive(
              child: const Text('Log out'),
              onPressed: () => ref.read(authenticationRepositoryProvider).logout(),
            ),
          ],
        ),
      ],
    );
  }
}
