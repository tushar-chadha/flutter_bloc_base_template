import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/app_bloc.dart';
import '../bloc/app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            if (state is AppLoading) {
              return const CircularProgressIndicator();
            } else if (state is AppLoaded) {
              return const Text("App Loaded Successfully!");
            } else if (state is AppError) {
              return Text("Error: ${state.message}");
            }
            return const Text("Welcome!");
          },
        ),
      ),
    );
  }
}
