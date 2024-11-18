import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_match/src/main_layout/screens/picker_sccreen/presenter/cubit/picker_cubit.dart';

import '../../../../../../core/get_it/service_locator.dart';
import '../../../../../../core/widget/custom_text_form_filed_widget.dart';

class AttachFileModelItem extends StatelessWidget {
  const AttachFileModelItem({super.key, required this.state});
  final PickerState state;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<PickerCubit>(),
      child: BlocBuilder<PickerCubit, PickerState>(
        bloc: getIt<PickerCubit>(),
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: Theme.of(context).colorScheme.primary)),
            width: double.infinity,
            height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("Select File"),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormFaildWidget(
                  hintText: "Playlist Title",
                  controller: getIt<PickerCubit>().titleController,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormFaildWidget(
                  readOnly: true,
                  hintText: "Pick File",
                  initialValue: state.resultFilePicked?.uri.scheme,
                  onTap: () {
                    getIt<PickerCubit>().onPickFile();
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Save")))
              ],
            ),
          );
        },
      ),
    );
  }
}
