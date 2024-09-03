import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:live_match/core/api_erorr_handler/api_erorr_handler.dart';
import 'package:live_match/core/api_result/api_result.dart';

import '../../../../core/const/api_const.dart';
import '../model/category_model/category_model.dart';

abstract class CategoryRepository {
  Future<ApiResult> getArabicChannel(String url);
}

class CategoryRepositoryImp extends CategoryRepository {
  final Dio _dio = Dio();
  @override
  Future<ApiResult> getArabicChannel(String url) async {
    try {
      final response = await _dio.get("${ApiConst.baseUrl}$url");
      print("${ApiConst.baseUrl}$url");
      return ApiResult.success(
          CategoryModel.fromJson(jsonDecode(response.data)));
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }
}
