import 'package:dio/dio.dart';

import '../../../../core/api_erorr_handler/api_erorr_handler.dart';
import '../../../../core/api_result/api_result.dart';

class PlayerService {
  Future<ApiResult> fetchM3U8Content(String url) async {
    final Dio dio = Dio();

    try {
      final response = await dio.get(url);

      return ApiResult.success(response.data);
    } catch (erorr) {
      return ApiResult.failure(ApiErrorHandler.handle(erorr.toString()));
    }
  }
}
