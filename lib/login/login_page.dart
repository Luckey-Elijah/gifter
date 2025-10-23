import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gifter/app/router.dart';
import 'package:gifter/components/text.dart';
import 'package:gifter/login/login_controller.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final formKey = GlobalKey<ShadFormState>();
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginControllerProvider);
    final enabled = !state.isLoading;
    return ShadCard(
      backgroundColor: ShadTheme.of(context).colorScheme.background,
      child: ShadForm(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            spacing: 8,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Header1('Gifter'),
              const Header3('Login'),
              if (state case AsyncData(:final value) when value.top.isNotEmpty) ...[
                ShadButton.ghost(
                  leading: const Icon(LucideIcons.circleX),
                  child: const Text('Clear Errors'),
                  onPressed: () => ref.invalidate(loginControllerProvider),
                ),
                for (final error in value.top)
                  ShadAlert.destructive(
                    title: Text(error),
                    icon: const Icon(LucideIcons.circleAlert),
                  ),
              ],
              ShadInputFormField(id: #email, enabled: enabled, placeholder: const Text('email')),
              ShadInputFormField(
                id: #password,
                enabled: enabled,
                obscureText: obscure,
                placeholder: const Text('password'),
                trailing: ShadGestureDetector(
                  child: Icon(obscure ? LucideIcons.eyeClosed : LucideIcons.eye),
                  onTap: () => setState(() => obscure = !obscure),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShadButton(
                    enabled: enabled,
                    child: const Text('Login'),
                    onPressed: () async {
                      final controller = ref.read(loginControllerProvider.notifier);
                      final form = formKey.currentState!.value;
                      await controller.login(
                        email: form[#email]?.toString(),
                        password: form[#password]?.toString(),
                      );
                    },
                  ),
                  ShadButton.secondary(
                    child: const Text('Go to Sign Up'),
                    onPressed: () => context.router.navigate(const SignUpRoute()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
