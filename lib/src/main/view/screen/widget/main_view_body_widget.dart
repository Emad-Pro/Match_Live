import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:live_match/src/main/presenter/cubit/main_cubit.dart';
import 'package:live_match/src/main/view/screen/widget/made_with_widget.dart';

import '../../../../../core/get_it/service_locator.dart';
import '../../../../../core/widget/custom_sec_item.dart';
import '../../../../category/view/screen/category_sccreen.dart';

class MainViewBodyWidget extends StatelessWidget {
  const MainViewBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      bloc: getIt<MainCubit>()..getServiceChannel(),
      builder: (context, state) {
        return Column(
          children: [
            state.map(
                loading: (state) => const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: CircularProgressIndicator()),
                      ],
                    ),
                success: (success) => SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: success.mainModel.menu!
                              .map(
                                (toElement) => CustomSecItem(
                                  titleText: toElement.title!,
                                  logoPath: toElement.icon,
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CategorySccreen(
                                                  endPoing:
                                                      toElement.link ?? "",
                                                  titleCategory:
                                                      toElement.title!,
                                                )));
                                  },
                                ),
                              )
                              .toList()),
                    ),
                erorr: (erorr) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(erorr.errorMessage),
                        ElevatedButton(
                            onPressed: () {
                              getIt<MainCubit>().getServiceChannel();
                            },
                            child: const Text("Reload"))
                      ],
                    )),
            const Spacer(),
            const MadeWithWidget()
          ],
        );
      },
    );
  }
}
