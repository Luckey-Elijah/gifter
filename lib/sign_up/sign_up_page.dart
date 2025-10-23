import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gifter/app/router.dart';
import 'package:gifter/components/text.dart';
import 'package:gifter/sign_up/sign_up_controller.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

@RoutePage()
class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final formKey = GlobalKey<ShadFormState>();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(signUpControllerProvider);
    final enabled = !state.isLoading;
    return ShadCard(
      backgroundColor: ShadTheme.of(context).colorScheme.background,
      child: ShadForm(
        key: formKey,
        child: Column(
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Header1('Gifter'),
            const Header3('Sign Up'),
            if (state case AsyncData(:final value) when value.top.isNotEmpty) ...[
              for (final error in value.top)
                ShadAlert.destructive(
                  title: Text(error),
                  icon: const Icon(LucideIcons.circleAlert),
                ),
            ],
            ShadInputFormField(
              id: #email,
              placeholder: const Text('email'),
              enabled: enabled,
            ),
            ShadInputFormField(
              id: #password,
              obscureText: true,
              placeholder: const Text('password'),
              enabled: enabled,
            ),
            ShadInputFormField(
              id: #confirm,
              obscureText: true,
              placeholder: const Text('confirm'),
              enabled: enabled,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShadButton(
                  enabled: enabled,
                  onPressed: () async {
                    final controller = ref.read(signUpControllerProvider.notifier);
                    final form = formKey.currentState!.value;
                    await controller.signUp(
                      email: form[#email]?.toString(),
                      password: form[#password]?.toString(),
                      confirm: form[#confirm]?.toString(),
                    );
                  },
                  child: const Text('Sign Up'),
                ),
                ShadButton.secondary(
                  child: const Text('Go to Login'),
                  onPressed: () => context.router.navigate(const LoginRoute()),
                ),
              ],
            ),
            if (!enabled) const ShadProgress(),
          ],
        ),
      ),
    );
  }
}
