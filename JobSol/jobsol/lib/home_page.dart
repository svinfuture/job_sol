import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "https://cdn.notefolio.net/img/b0/19/b019e1681142c8bd9b3f3a96b76af7f25ce0e0577304106315663295f91bbc89_v1.jpg",
      "https://media.vlpt.us/images/rhfovk/post/a806d412-58ba-45d0-a0cf-62726c6da132/%EC%9E%90%EA%B8%B0%EC%86%8C%EA%B0%9C%ED%8E%98%EC%9D%B4%EC%A7%804.jpg",
      "https://www.letuin.com/data_user/lecture/1539008031/1028542772_dtcg12z6_ec9db8ec82acec9e84ec9b90ec9d98_eba9b4eca091_x_ed8c8cec9dbc_1ebb684ec9e90eab8b0ec868ceab09c.png",
      "https://news.skhynix.co.kr/hs-fs/hubfs/B_NewsRoom/We%20Do(456)/%EC%9D%B8%EC%82%AC%EC%9D%B4%EB%93%9C(256)/2020/0601/%EC%9D%B4%EC%A0%9C%EB%8A%94%20%EB%A9%B4%EC%A0%91%EC%9D%B4%EB%8B%A4!%20%EC%84%9C%EB%A5%98%EC%99%80%20%EC%9D%B8%C2%B7%EC%A0%81%EC%84%B1%EC%9D%84%20%EA%B1%B0%EC%B3%90%20%E2%80%98%EC%B7%A8%EB%BD%80%E2%80%99%EB%A1%9C%20%EA%B0%80%EB%8A%94%203%EC%B0%A8%20%EA%B4%80%EB%AC%B8%2c.png?width=945&name=%EC%9D%B4%EC%A0%9C%EB%8A%94%20%EB%A9%B4%EC%A0%91%EC%9D%B4%EB%8B%A4!%20%EC%84%9C%EB%A5%98%EC%99%80%20%EC%9D%B8%C2%B7%EC%A0%81%EC%84%B1%EC%9D%84%20%EA%B1%B0%EC%B3%90%20%E2%80%98%EC%B7%A8%EB%BD%80%E2%80%99%EB%A1%9C%20%EA%B0%80%EB%8A%94%203%EC%B0%A8%20%EA%B4%80%EB%AC%B8%2c.png",
      "https://cdn.notefolio.net/img/b0/19/b019e1681142c8bd9b3f3a96b76af7f25ce0e0577304106315663295f91bbc89_v1.jpg",
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            onPressed: () {},
          )
        ],
        title: Image.asset(
          'assets/logo3.png',
          height: 32,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          final image = images[index]; // index에 해당하는 이미지
          return Feed(imageUrl: image); // imageUrl 전달
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
