import 'package:flutter/material.dart';
import 'package:live_match/app/iptv_screen/presenter/cubit/iptv_cubit.dart';

import '../../../../core/enum/request_state.dart';
import '../../../../core/get_it/service_locator.dart';
import '../../../../core/widget/custom_loading.dart';
import '../../../../core/widget/custom_snackbar.dart';
import '../../presenter/cubit/picker_cubit.dart';

void createPlaylistListener(PickerState state, BuildContext context) {
  if (state.createPlayListState == RequestState.loading) {
    customLoading(context, "Creating PlayList ....");
  } else if (state.createPlayListState == RequestState.erorr) {
    Navigator.pop(context);
    customSnackBar(context, state.createPlayListErrorMessage, Colors.red);
  } else if (state.createPlayListState == RequestState.success) {
    Navigator.pop(context);
    Navigator.pop(context);
    customSnackBar(context, "PlayList Created Success", Colors.green);
    getIt<IptvCubit>().getPlayList();
  }
}
