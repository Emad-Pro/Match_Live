import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_match/core/widget/custom_sec_item.dart';
import 'package:live_match/src/category/view/cubit/category_cubit.dart';

import '../../../../core/get_it/service_locator.dart';

class CategorySccreen extends StatelessWidget {
  const CategorySccreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sec Name"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
          )
        ],
      ),
      body: BlocBuilder<CategoryCubit, CategoryState>(
        bloc: getIt<CategoryCubit>(),
        builder: (context, state) {
          return state.when(
              loaded: (model) => const Center(
                    child: CircularProgressIndicator(),
                  ),
              loading: () => ListView.builder(
                  itemBuilder: (context, index) => CustomSecItem(
                        titleText: "titleText",
                        onTap: () {},
                        logoPath:
                            'https://i.imgur.com/PVt8OPN_d.webp?maxwidth=760&fidelity=grand',
                      )),
              erorr: (erorr) => Text(erorr));
        },
      ),
    );
  }
}
