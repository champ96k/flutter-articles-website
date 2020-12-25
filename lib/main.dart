import 'package:abstract_coder/utils/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/screen/home_page.dart';

void main() {
  return runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => new ThemeNotifier(ThemeData.light()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
        builder: (context, theme, _) => MaterialApp(
              title: 'Abstract Coder',
              debugShowCheckedModeBanner: false,
              theme: theme.getTheme(),
              home: HomePage(), 
            )
        );
  }
}
