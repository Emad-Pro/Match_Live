part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.loaded(CategoryModel model) = _Loaded;
  const factory CategoryState.erorr(String erorrMessage) = _Erorr;
}
