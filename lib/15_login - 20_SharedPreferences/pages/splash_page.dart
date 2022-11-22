import 'package:flutter/material.dart';
import '../services/prefs_service.dart';

class SpashPage extends StatefulWidget {
  const SpashPage({ Key? key }) : super(key: key);

  @override
  State<SpashPage> createState() => _SpashPageState();
}

class _SpashPageState extends State<SpashPage> {

  @override
  void initState() {
    super.initState();

    Future.wait([
      PrefsService.isAuth(),
      Future.delayed(Duration(seconds: 3)),
    ]).then((value) => value[0] 
      ? Navigator.of(context).pushReplacementNamed('/home')
      : Navigator.of(context).pushReplacementNamed('/login'),
    );

    // Future.delayed(const Duration(seconds: 3)).then(
    //   (_) => Navigator.of(context).pushReplacementNamed('/login'),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade700,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.white54,
        ),
      ),
    );
  }
}