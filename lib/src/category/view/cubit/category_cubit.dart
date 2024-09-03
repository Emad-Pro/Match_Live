import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_match/src/category/model/repo/category_repo.dart';

import '../../model/model/category_model/category_model.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this.categoryRepository) : super(CategoryState.loading());
  final CategoryRepository categoryRepository;
  fetchArabChannel(String url) async {
    final result = await categoryRepository.getArabicChannel(url);
    result.when(
        success: (success) => emit(CategoryState.loaded(success)),
        failure: (failure) {
          emit(CategoryState.erorr(failure.message!));
        });
  }
}
