import 'package:dic_project/api/CafeApi.dart';
import 'package:dic_project/providers/tipo_textos_providers.dart';
import 'package:dic_project/view/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:dic_project/view/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  CafeApi.configureDio();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TipoTextosProvider(),
          lazy: false,
        )
      ],
      child: MaterialApp(
        title: 'Dicionário Gestual',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NavBarMenu(),
      ),
    );
  }
}
