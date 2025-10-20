import 'package:flutter/widgets.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Header1 extends StatelessWidget {
  const Header1(this.data, {super.key});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: ShadTheme.of(context).textTheme.h1,
    );
  }
}

class Header2 extends StatelessWidget {
  const Header2(this.data, {super.key});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: ShadTheme.of(context).textTheme.h2,
    );
  }
}

class Header3 extends StatelessWidget {
  const Header3(this.data, {super.key});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: ShadTheme.of(context).textTheme.h3,
    );
  }
}

class Header4 extends StatelessWidget {
  const Header4(this.data, {super.key});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: ShadTheme.of(context).textTheme.h4,
    );
  }
}
