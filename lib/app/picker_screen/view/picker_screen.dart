import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_match/app/picker_screen/presenter/cubit/picker_cubit.dart';

import 'package:live_match/core/get_it/service_locator.dart';

import 'listener/picker_listener.dart';

class PickerScreen extends StatelessWidget {
  const PickerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<PickerCubit, PickerState>(
        bloc: getIt<PickerCubit>(),
        listener: (context, state) {
          pickerListener(state, context);
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      getIt<PickerCubit>().onPickFile();
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.file_present_sharp,
                            size: 50,
                          ),
                          Text('Pick File')
                        ],
                      ),
                    )),
                InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.link_outlined,
                            size: 50,
                          ),
                          Text('Url')
                        ],
                      ),
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
