import 'package:flutter/material.dart';
import 'package:flutter_app/pages/users/SignIn.dart';

class TopNavbar extends StatelessWidget {
  final String appBarTitle;
  final List<String> tabs;

  const TopNavbar(this.appBarTitle, this.tabs, {super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    if (tabs.isEmpty) {
      // tabs가 비어 있을 때는 AppBar를 표시하고 아이콘을 오른쪽에 배치합니다.
      return Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
          titleTextStyle: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.white, // 아이콘 색상을 하얀색으로 설정
                size: 30.0, // 아이콘 크기를 원하는 크기로 설정
              ),
              onPressed: () {
                // 아이콘을 눌렀을 때 로그인 화면으로 이동합니다.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignIn()),
                );
              },
            ),
          ],
        ),
        body: const Center(
          child: Text('콘텐츠가 없습니다.'),
        ),
      );
    } else {
      // tabs가 있을 때는 AppBar와 TabBar를 표시하고 아이콘을 오른쪽에 배치합니다.
      return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(appBarTitle),
            backgroundColor: const Color.fromARGB(255, 255, 0, 0),
            titleTextStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.person,
                  color: Colors.white, // 아이콘 색상을 하얀색으로 설정
                  size: 30.0, // 아이콘 크기를 원하는 크기로 설정
                ),
                onPressed: () {
                  // 아이콘을 눌렀을 때 로그인 화면으로 이동합니다.
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignIn()),
                  );
                },
              ),
            ],
            bottom: TabBar(
              labelColor: Colors.white, // 선택된 탭의 글자 색상을 하얀색으로 설정
              unselectedLabelColor:
                  Colors.white70, // 선택되지 않은 탭의 글자 색상을 연한 하얀색으로 설정
              indicatorColor: Colors.white, // 밑줄의 색상을 하얀색으로 설정
              tabs: tabs.map((String title) => Tab(text: title)).toList(),
            ),
          ),
          body: TabBarView(
            children: tabs.map((String title) {
              return ListView.builder(
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    tileColor: index.isOdd ? oddItemColor : evenItemColor,
                    title: Text('$title $index'),
                  );
                },
              );
            }).toList(),
          ),
        ),
      );
    }
  }
}
