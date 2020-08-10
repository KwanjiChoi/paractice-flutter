import 'package:flutter/material.dart';
import './next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //定数・変数定義はここでしましょう
  int _counter = 0;
  List<String> titleList = ['Amazon','楽天','Yahoo!'];
  void _addGoogleList() {
    setState(() {
      titleList.add('google');
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('パスワード管理'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, int index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(titleList[index]),
                leading: Icon(Icons.security),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextPage(titleList[index])));
                },
              ),
              Divider(),
            ]
          );
        },
        itemCount: titleList.length,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _addGoogleList,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//todo ホーム画面のタイトル変更
//todo リスト表示
//todo リスト間に区切り線表示
//todo リスト表示を動的に
//todo フロートアクションボタンをタップしたときに、リストにひとつ追加
//todo 新しい画面を作成し、リストをタップしたときに遷移
//todo 新しい画面のレイアウトを作成
//todo 新しい画面にリストからデータを引き継ぐ
