import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_match/app/iptv_settings_screen/presenter/cubit/iptv_settings_cubit.dart';
import 'package:live_match/core/localizations/localizations_service.dart';

import '../../../core/enum/request_state.dart';
import '../../../core/get_it/service_locator.dart';
import '../../../core/widget/custom_loading.dart';
import '../../../core/widget/custom_snackbar.dart';

class IptvSettingsScreen extends StatelessWidget {
  const IptvSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Iptv".tr(context)),
      ),
      body: BlocConsumer<IptvSettingsCubit, IptvSettingsState>(
          bloc: getIt<IptvSettingsCubit>(),
          listener: (context, state) {
            if (state.removeAllChannelState == RequestState.erorr) {
              customSnackBar(
                  context, state.removeAllChannelMessage!, Colors.red);
            } else if (state.removeAllChannelState == RequestState.success) {
              customSnackBar(context, "Remove All Channel Success".tr(context),
                  Colors.green);
            } else if (state.removeAllChannelState == RequestState.loading) {
              Navigator.pop(context);
              customLoading(context, "Loading Remove All Channel".tr(context));
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  ListTile(
                      tileColor: Theme.of(context)
                          .colorScheme
                          .onSecondary
                          .withOpacity(0.5),
                      onTap: () {},
                      trailing: Switch(
                          value: state.logoChannel,
                          onChanged: (vale) {
                            getIt<IptvSettingsCubit>().toggleLogoChannel(vale);
                          }),
                      title: Text(
                        "Channel Logo".tr(context),
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(height: 15),
                  ListTile(
                    tileColor: Theme.of(context)
                        .colorScheme
                        .onSecondary
                        .withOpacity(0.5),
                    onTap: () {
                      showAskRemoveAllChannelDialog(context);
                    },
                    title: Text(
                      "Clear All Channel".tr(context),
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

Future<dynamic> showAskRemoveAllChannelDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        title: Text("Remove All Channel".tr(context)),
        content: Text("Are You Sure?".tr(context)),
        actions: [
          TextButton(
              onPressed: () async {
                await getIt<IptvSettingsCubit>().removeAllChannel();
              },
              child: Text("Yes".tr(context),
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.error))),
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("No".tr(context))),
        ],
      );
    },
  );
}
