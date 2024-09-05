import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_match/core/widget/custom_sec_item.dart';
import 'package:live_match/src/category/view/cubit/category_cubit.dart';

import '../../../../core/get_it/service_locator.dart';
import '../../../../core/responsive/responsive_text.dart';
import '../../../channels/view/channel_screen.dart';

class CategorySccreen extends StatelessWidget {
  const CategorySccreen(
      {super.key, required this.endPoing, required this.titleCategory});
  final String endPoing;
  final String titleCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titleCategory,
          style: TextStyle(
              fontSize: getResponsiveFontSize(context, fontSize: 20),
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: BlocBuilder<CategoryCubit, CategoryState>(
        bloc: getIt<CategoryCubit>()..fetchArabChannel(endPoing),
        builder: (context, state) {
          return state.when(
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
              loaded: (model) => ListView.builder(
                  itemCount: model.channel!.length,
                  itemBuilder: (context, index) => CustomSecItem(
                        titleText: model.channel![index].categoryName!,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChannelScreen(
                                        channels:
                                            model.channel![index].listChannel!,
                                      )));
                        },
                      )),
              erorr: (erorr) => Text(erorr));
        },
      ),
    );
  }
}
