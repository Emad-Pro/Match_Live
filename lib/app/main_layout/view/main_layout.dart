import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_match/app/main_layout/presenter/cubit/main_cubit.dart';
import 'package:live_match/core/localizations/localizations_service.dart';
import 'package:live_match/core/localizations/screen/localizations_screen.dart';
import 'package:live_match/core/responsive/responsive_text.dart';
import 'package:live_match/core/theme/cubit/theme_cubit.dart';

import '../../../core/get_it/service_locator.dart';
import '../../../core/theme/theme_screen.dart';
import '../../iptv_settings_screen/view/iptv_settings_screen.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Live Match"),
        ),
        drawer: Drawer(
          backgroundColor: Theme.of(context).colorScheme.surface,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                DrawerHeader(
                  child: Image.asset("assets/images/tv.png"),
                ),
                Text(
                  "IpTV Channels".toUpperCase(),
                  style: TextStyle(
                      fontSize: getResponsiveFontSize(context, fontSize: 22),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context)
                          .colorScheme
                          .onSecondary
                          .withOpacity(0.5)),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const LocalizationsScreen()));
                    },
                    leading: const Icon(Icons.language),
                    title: Text("Language".tr(context)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context)
                          .colorScheme
                          .onSecondary
                          .withOpacity(0.5)),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ThemeScreen()));
                    },
                    leading: const Icon(Icons.color_lens_outlined),
                    title: Text("App Theme".tr(context)),
                    trailing: BlocBuilder<ThemeCubit, ThemeMode>(
                      bloc: getIt<ThemeCubit>(),
                      builder: (context, state) {
                        return Switch(
                            value: getIt<ThemeCubit>().state == ThemeMode.dark,
                            onChanged: (value) {
                              getIt<ThemeCubit>().updateTheme(
                                  getIt<ThemeCubit>().state == ThemeMode.dark
                                      ? ThemeMode.light
                                      : ThemeMode.dark);
                            });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context)
                            .colorScheme
                            .onSecondary
                            .withOpacity(0.5)),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const IptvSettingsScreen()));
                      },
                      leading: Icon(Icons.settings),
                      title: Text("Setting Iptv".tr(context)),
                    )),
              ],
            ),
          ),
        ),
        body: BlocBuilder<MainCubit, MainState>(
            bloc: getIt<MainCubit>(),
            builder: (context, state) {
              return getIt<MainCubit>().screens[state.bottomNavIndex];
            }),
        bottomNavigationBar: BlocBuilder<MainCubit, MainState>(
            bloc: getIt<MainCubit>(),
            builder: (context, state) {
              return BottomNavigationBar(
                selectedItemColor: Theme.of(context).colorScheme.primary,
                currentIndex: state.bottomNavIndex,
                onTap: (index) {
                  getIt<MainCubit>().changeBottomNavIndex(index);
                },
                items: getIt<MainCubit>().bottomNavItems,
              );
            }));
  }
}
