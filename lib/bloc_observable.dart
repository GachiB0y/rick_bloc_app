import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer';

class CharacterBlocObservable extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log('onEvenet -- bloc: ${bloc.runtimeType}, event $event');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    log('onEvenet -- bloc: ${bloc.runtimeType}, error $error');
  }
}
