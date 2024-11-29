import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:live_match/app/iptv_screen/view/iptv_screen.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainState());
  List<Widget> screens = [
    IptvScreen(),
    const Center(
      child: Text('Search'),
    ),
    const Center(
      child: Text('Profile'),
    ),
  ];
  List<BottomNavigationBarItem> bottomNavItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
        ),
        label: 'Search'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
        ),
        label: 'Profile'),
  ];

  void changeBottomNavIndex(int index) {
    emit(state.copyWith(bottomNavIndex: index));
  }
}
