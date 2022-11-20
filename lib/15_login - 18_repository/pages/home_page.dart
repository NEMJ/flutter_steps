import 'package:flutter/material.dart';
import '../repositories/home_repository_imp.dart';
import '../models/post_model.dart';
import '../repositories/home_repository_mock.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page'),
      ),
      body: ValueListenableBuilder<List<PostModel>>(
        valueListenable: _controller.posts,
        builder: (_, list, __) {
          return ListView.separated(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (_, index) => ListTile(
              leading: Text(list[index].id.toString()),
              trailing: Icon(Icons.arrow_forward),
              title: Text(list[index].title),
            ),
            separatorBuilder: (_, __) => Divider(),
          );
        },
      ),
    );
  }
}