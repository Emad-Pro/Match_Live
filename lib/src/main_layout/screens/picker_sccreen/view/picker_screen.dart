import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_match/src/main_layout/screens/picker_sccreen/presenter/cubit/picker_cubit.dart';
import 'package:live_match/src/main_layout/screens/picker_sccreen/view/widget/build_option.dart';

import '../../../../../core/get_it/service_locator.dart';
import 'widget/attach_file_bottom_sheet_item.dart';

class PickerScreen extends StatelessWidget {
  const PickerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PickerCubit, PickerState>(
      listener: (context, state) {
        if (state.pickerFileState == PickerFileState.pickFileError ||
            state.pickerFileState == PickerFileState.checkFileError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        } else if (state.pickerFileState == PickerFileState.checkFileLoading) {
          showLoadingDialog(context, "Check File Slected");
        } else if (state.pickerFileState == PickerFileState.pickFileLoading) {
          showLoadingDialog(context, "Pick File Loading");
        } else if (state.pickerFileState == PickerFileState.checkFileSuccess) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.blue,
              content: Text("File Selected Successfly")));
        }
      },
      bloc: getIt<PickerCubit>(),
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(top: 35, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(Icons.menu,
                          color: Theme.of(context).colorScheme.surface),
                    ),
                  ),
                  const Text(
                    "Live IpTv",
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox()
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              BuildOption(
                  text: 'M3UM Or M3M Link',
                  iconData: Icons.link,
                  onTap: () {
                    showBottomSheet(
                        context: context,
                        //    isScrollControlled: true,
                        builder: (context) => AttachFileModelItem(
                              state: state,
                            ));
                  }),
              const SizedBox(
                height: 15,
              ),
              BuildOption(
                  text: 'M3UM Or M3M File',
                  iconData: Icons.tv,
                  onTap: () async {
                    await getIt<PickerCubit>().onPickFile();
                  }),
              const SizedBox(
                height: 15,
              ),
              BuildOption(
                  iconData: Icons.info,
                  text: 'I don\'t have M3u, I Can Find it',
                  onTap: () {}),
            ],
          ),
        );
      },
    );
  }
}

void showLoadingDialog(BuildContext context, String message) {
  showDialog(
    barrierDismissible: false, // Prevents dismissing by tapping outside
    context: context,
    builder: (context) {
      return WillPopScope(
        onWillPop: () async => false, // Prevents back button dismissal
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(width: 20),
                Text(message),
              ],
            ),
          ),
        ),
      );
    },
  );
}
