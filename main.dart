import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // 홈페이지 보여주기
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 음식 사진 데이터
    List<Map<String, dynamic>> dataList = [
      {
        "category": "탑건: 매버릭",
        "imgUrl": "https://i.ibb.co/sR32PN3/topgun.jpg",
      },
      {
        "category": "마녀2",
        "imgUrl": "https://i.ibb.co/CKMrv91/The-Witch.jpg",
      },
      {
        "category": "범죄도시2",
        "imgUrl": "https://i.ibb.co/2czdVdm/The-Outlaws.jpg",
      },
      {
        "category": "헤어질 결심",
        "imgUrl": "https://i.ibb.co/gM394CV/Decision-to-Leave.jpg",
      },
      {
        "category": "브로커",
        "imgUrl": "https://i.ibb.co/MSy1XNB/broker.jpg",
      },
      {
        "category": "문폴",
        "imgUrl": "https://i.ibb.co/4JYHHtc/Moonfall.jpg",
      },
    ];

    // 화면에 보이는 영역
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movie Reviews',
          style: TextStyle(fontSize: 30.0, color: Colors.white), // 폰트 크기와 색상 조절
        ),
        backgroundColor: Colors.blueGrey, // 배경색 설정
        elevation: 8.0, // 그림자 효과
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 8.0),
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '24년 띵작 검색',
                          border: InputBorder.none,
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.account_circle_outlined,
                        size: 32), // 아이콘 크기 조절
                    onPressed: () {
                      // 아이콘 클릭 시 동작 정의
                    },
                  ),
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'List',
                labelStyle: TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.bold), // 텍스트 크기 조절
                contentPadding:
                    EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
                border: InputBorder.none, // 마진 조절
              ),
            ),
            SizedBox(height: 2.0),
            for (var data in dataList)
              ContentBox(
                category: data['category'],
                imgUrl: data['imgUrl'],
              ),
          ],
        ),
      ),
    );
  }
}

class ContentBox extends StatelessWidget {
  final String category;
  final String imgUrl;

  const ContentBox({
    Key? key,
    required this.category,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            imgUrl,
            height: 320,
            width: double.infinity,
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.5), // 반투명 배경
            colorBlendMode: BlendMode.darken, // 어둡게
          ),
          Text(
            category,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
