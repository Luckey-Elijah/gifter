import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:gifter/components/text.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

@RoutePage()
class GroupListPage extends StatefulWidget {
  const GroupListPage({super.key});

  @override
  State<GroupListPage> createState() => _GroupListPageState();
}

class _GroupListPageState extends State<GroupListPage> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        const SliverFloatingHeader(
          child: Padding(padding: EdgeInsets.only(bottom: 8), child: Header1('Groups')),
        ),

        SliverList.list(
          children: [
            for (var i = 0; i < 100; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: _GroupListItem(i: i),
              ),
          ],
        ),
      ],
    );
  }
}

class _GroupListItem extends StatelessWidget {
  const _GroupListItem({required this.i});

  final int i;

  @override
  Widget build(BuildContext context) {
    return ShadCard(
      title: Text('Group $i'),
      description: Text('managed by @user-${i + 1}'),
      footer: const Text('asdf'),
      child: const ShadAvatar(
        'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
        placeholder: Text('CN'),
      ),
    );
  }
}
