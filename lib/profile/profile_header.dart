import 'package:flutter/widgets.dart';
import 'package:gifter/components/text.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({required this.profileViewModel, super.key});

  final ProfileViewModel profileViewModel;

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ShadAvatar(
          'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
          placeholder: Text('CN'),
        ),
        SizedBox(width: 12),
        Header1('Profile'),
      ],
    );
  }
}

class ProfileViewModel {
  const ProfileViewModel();
}
