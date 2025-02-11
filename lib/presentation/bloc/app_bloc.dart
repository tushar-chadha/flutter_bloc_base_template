import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/core/network/network.dart';
import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final NetworkInfo networkInfo;

  AppBloc(this.networkInfo) : super(AppInitial()) {
    on<AppStarted>((event, emit) async {
      emit(AppLoading());

      final isConnected = await networkInfo.isConnected;
      if (isConnected) {
        emit(AppLoaded());
      } else {
        emit(AppError("No Internet Connection"));
      }
    });
  }
}
