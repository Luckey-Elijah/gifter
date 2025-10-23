import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:gifter/app/router.dart';
import 'package:gifter/components/text.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<ShadFormState>();

  @override
  Widget build(BuildContext context) {
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
            const Header3('Login'),
            ShadInputFormField(placeholder: const Text('email')),
            ShadInputFormField(obscureText: true, placeholder: const Text('password')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShadButton(
                  child: const Text('Login'),
                  onPressed: () {},
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
    );
  }
}
