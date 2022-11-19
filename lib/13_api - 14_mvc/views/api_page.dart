import 'package:flutter/material.dart';
import 'package:primeiros_passos/13_api - 14_mvc/controllers/posts_controller.dart';
import '../../11 - custom widget/widgets/custom_button_widget.dart';

class ApiPage extends StatefulWidget {
  const ApiPage({ Key? key }) : super(key: key);

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {

  final PostsController _controller = PostsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: Listenable.merge([_controller.posts, _controller.inLoader]),
                builder: (_, __) => _controller.inLoader.value
                  ? CircularProgressIndicator()
                  : ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _controller.posts.value.length,
                  itemBuilder: (_, index) => ListTile(
                    title: Text(_controller.posts.value[index].title),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              CustomButtonWidget(
                title: 'States',
                titleSize: 18,
                disable: false,
                onPressed: () => _controller.callApi(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}