import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Search.dart';
import 'tabs/Recipe.dart';
import 'tabs/Account.dart';

class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  // 把页面存放到数组里
  List _pageList = [
    HomePage(),
    SearchPage(),
    RecipePage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe'),
        backgroundColor: Color.fromARGB(255, 57, 166, 95),
      ),
      body: this._pageList[this._currentIndex],
      backgroundColor: Color.fromARGB(255, 237, 242, 239),
      bottomNavigationBar: BottomNavigationBar(
        // 默认选中第几项
        currentIndex: this._currentIndex,
        // 导航栏点击获取索引值
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 30.0, //icon的大小
        fixedColor: Color.fromARGB(255, 33, 159, 77), //选中的颜色
        type: BottomNavigationBarType.fixed, //配置底部tabs可以有多个按钮
        //定义导航栏的图片+名称
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: 'Record',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dining_outlined),
            label: 'Recipe',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Account Circle',
          ),
        ],
      ),
    );
  }
}
