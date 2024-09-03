import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_match/src/main/presenter/cubit/main_cubit.dart';

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
        return SingleChildScrollView(
          child: state.map(
              loading: (state) =>
                  const Center(child: CircularProgressIndicator()),
              success: (success) => Column(
                  children: success.mainModel.menu!
                      .map(
                        (toElement) => CustomSecItem(
                          titleText: toElement.title!,
                          logoPath: toElement.icon,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CategorySccreen(
                                          endPoing: toElement.link ?? "",
                                          titleCategory: toElement.title!,
                                        )));
                          },
                        ),
                      )
                      .toList()),
              erorr: (erorr) => Center(child: Text(erorr.errorMessage))),
        );
      },
    );
  }
}
