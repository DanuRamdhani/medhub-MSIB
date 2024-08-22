import 'package:flutter/material.dart';
import 'package:medhub/core/routes/routes.dart';
import 'package:medhub/core/routes/routes_name.dart';
import 'package:medhub/core/utils/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medhub/src/on_boarding/bloc/on_boarding_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => OnBoardingBloc()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedHub',
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      initialRoute: AppRoute.home,
      routes: routes,
    );
  }
}
