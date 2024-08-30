part of 'last_news_cubit.dart';

@freezed
class LastNewsState with _$LastNewsState {
  const factory LastNewsState.initial() = _Initial;
  const factory LastNewsState.loading() = _Loading;
  const factory LastNewsState.success(List<LastNewsModel> model) = _Success;
  const factory LastNewsState.erorr(String erorrMessage) = _Erorr;
}
