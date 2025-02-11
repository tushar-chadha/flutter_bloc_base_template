import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/config/routes.dart';
import 'package:mobile/core/network/network.dart';
import 'package:mobile/presentation/bloc/app_bloc.dart';
import 'package:mobile/presentation/bloc/app_event.dart';
import 'package:mobile/presentation/pages/home.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

void main() {
  // Properly initializing NetworkInfo with InternetConnectionChecker
  final NetworkInfo networkInfo =
      NetworkInfo(InternetConnectionChecker.createInstance());

  runApp(
    BlocProvider(
      create: (context) => AppBloc(networkInfo)..add(AppStarted()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc_template',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      home: const HomePage(),
    );
  }
}
