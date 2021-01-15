import 'package:flutter/material.dart';
import 'package:flutter_graphql_swapi/ui/ui.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key key,
    this.title,
    this.body,
  }) : super(key: key);

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        padding: MediaQuery.of(context).padding.copyWith(top: 24),
      ),
      child: Scaffold(
        appBar: AppBar(
          primary: true,
          backgroundColor: AppColors.black,
          title: Text(
            title,
            style: TextStyles.h2Default.copyWith(color: Colors.white),
          ),
          toolbarHeight: 36,
        ),
        body: body,
      ),
    );
  }
}
