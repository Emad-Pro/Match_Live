import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:live_match/core/api_erorr_handler/api_erorr_handler.dart';
import 'package:live_match/core/api_result/api_result.dart';
import 'package:live_match/src/main/model/main_model/main_model/main_model.dart';

import '../../../../core/const/api_const.dart';

abstract class MainRepository {
  Future<ApiResult> fetchServerChannel();
}

class MainRepositoryImp extends MainRepository {
  final Dio _dio = Dio();
  @override
  Future<ApiResult> fetchServerChannel() async {
    try {
      final response = await _dio.get(ApiConst.menuEndpoing);
      // print(jsonDecode(response.data));
      return ApiResult<MainModel>.success(
          MainModel.fromJson(jsonDecode(response.data)));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
