import 'package:dio/dio.dart';
import 'package:primeiros_passos/15_login - 18_repository/models/post_model.dart';
import 'home_repository.dart';

class HomeRepositoryImp implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }
    return [];
  }
}