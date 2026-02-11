import 'package:dio/dio.dart';
import 'package:mvvm_arch/core/networking/api_constants.dart';

class DioHelper {

  static late Dio dio;

void init() {
  dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Authorization': 'Bearer ${ApiConstants.apiKey}',
      'Content-Type'  : 'application/json',  
      },
    ),
  );
}

Future<Response> get({
  required String url,
  Map<String, dynamic>? queryParameters,
}) async {
  try {
    final response = await dio.get(url, queryParameters: queryParameters);
    return response;
  } catch (e) {
    rethrow;
  }
}

Future<Response> post({
  required String url,
  Map<String, dynamic>? query,
  required Map<String, dynamic> data,
}) async {
  try {
    final response = await dio.post(url, queryParameters: query, data: data);
    return response;
  } catch (e) {
    rethrow;
  }
}

Future<Response> put({
  required String url,
  Map<String, dynamic>? query,
  required Map<String, dynamic> data,
}) async {
  try {
    final response = await dio.put(url, queryParameters: query, data: data);
    return response;
  } catch (e) {
    rethrow;
  }
}


Future<Response> delete({
  required String url,
  Map<String, dynamic>? query,
}) async {
  try {
    final response = await dio.delete(url, queryParameters: query);
    return response;
  } catch (e) {
    rethrow;
  }
}


Future<Response> patch({
  required String url,
  Map<String, dynamic>? query,
  required Map<String, dynamic> data,
}) async {
  try {
    final response = await dio.patch(url, queryParameters: query, data: data);
    return response;
  } catch (e) {
    rethrow;
  } 
}




}