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
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "왔니?",
            style: TextStyle(fontSize: 40),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Image.network(
                    "https://jjalbang.today/files/jjalbox/2023/02/20230216_63edc1bfb7d43.jpg",
                    width: 500,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "이메일",
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "비밀번호",
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 24),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("드가자~!"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
