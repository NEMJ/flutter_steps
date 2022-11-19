import 'package:flutter/material.dart';
import 'package:primeiros_passos/00 - 08 - testes/test_page.dart';

class HomePageView extends StatefulWidget {
  HomePageView({ Key? key }) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final PageController _pageController = PageController();

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('AppBar'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Amy Maden'),
              accountEmail: Text('amy.mady@gmail.com'),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2017/11/19/07/30/girl-2961959_960_720.jpg')),
            ),
            ListTile(
              minLeadingWidth: 0,
              leading: const Icon(Icons.android),
              title: const Text('Android'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              minLeadingWidth: 0,
              leading: const Icon(Icons.account_circle),
              title: const Text('User Account'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(1);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              minLeadingWidth: 0,
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: PageView(
        onPageChanged: (pagina) => setState(() => indexBottomNavigationBar = pagina),
        controller: _pageController,
        children: [
          const TestPage(),
          Container(color: Colors.blueAccent),
          Container(color: Colors.pinkAccent),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavigationBar,
        onTap: (int page) {
          setState(() => indexBottomNavigationBar = page);
          _pageController.animateToPage(
            page,
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.android), label: 'Android'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}




/*
##### configuração no main no lugar de 'home:' ####
====================== Rotas ======================

initialRoute: '/',
routes: {
  '/' : (_) => const NavegacaoOne(),
  '/twoPage' : (_) => const NavegacaoTwo(),
},
*/