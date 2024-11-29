// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'main_cubit.dart';

class MainState with EquatableMixin {
  final int bottomNavIndex;

  MainState({this.bottomNavIndex = 0});
  @override
  List<Object?> get props => [bottomNavIndex];

  MainState copyWith({
    int? bottomNavIndex,
  }) {
    return MainState(bottomNavIndex: bottomNavIndex ?? this.bottomNavIndex);
  }
}
