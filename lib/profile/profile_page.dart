import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gifter/profile/profile_header.dart';

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
          children: const [
            //
          ],
        ),
      ],
    );
  }
}
