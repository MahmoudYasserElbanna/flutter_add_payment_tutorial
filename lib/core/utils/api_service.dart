import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();
  Future<Response> post({
    required body,
    required String url,
    required String token,
    String? contentType,
    Map<String, String>? header,
  }) async {
    var response = await dio.post(
      url,
      data: body,
      options: Options(
        contentType: contentType,
        headers:
            header ?? {'Authorization': 'Bearer $token'}, // Map<String, String>
      ),
    );
    return response;
  }
}
