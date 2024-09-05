import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_match/src/main/model/main_service/main_repo.dart';

import '../../model/main_model/main_model/main_model.dart';

part 'main_state.dart';
part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit(this.mainRepository) : super(const MainState.loading());
  final MainRepository mainRepository;
  getServiceChannel() async {
    emit(MainState.loading());
    final result = await mainRepository.fetchServerChannel();
    result.when(success: (success) {
      emit(MainState.success(success));
    }, failure: (failure) {
      emit(MainState.erorr(failure.message!));
    });
  }
}
