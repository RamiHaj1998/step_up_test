import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:step_up_test/features/splash/cubit/splash_state.dart';
import 'package:step_up_test/features/splash/repositories/splash_repository.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  final SplashRepository _splashRepository;

  SplashCubit(this._splashRepository) : super(const SplashState.initial());

  Future<void> getCurrentLoginInformation() async {
    final sessionOrFailure =
        await _splashRepository.getCurrentLoginInformation();
    sessionOrFailure.fold((failure) {
      emit(SplashState.failure(failure.message));
    }, (session) {
      emit(SplashState.success(session));
    });
  }
}
