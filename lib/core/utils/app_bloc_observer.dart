import 'package:flutter_bloc/flutter_bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    print("Created:${bloc.runtimeType}");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print("Error by:${bloc.runtimeType}Error$error");
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print("Changed:${bloc.runtimeType}Change:$change");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print("Transmited:${bloc.runtimeType}");
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);

    print("Closed:${bloc.runtimeType}");
  }
}
