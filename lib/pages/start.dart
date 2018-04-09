import 'package:flutter/material.dart';
class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
//      backgroundColor: Colors.blueAccent,
        decoration: new BoxDecoration(    //用一个BoxDecoration装饰器提供背景图片
          image: new DecorationImage(
              fit: BoxFit.fill,
              image: new NetworkImage('https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1523195981&di=8c77b6ed40f0070fc0205cc41d9a823b&src=http://n.sinaimg.cn/finance/transform/20170925/xDQk-fymesmp1386217.jpg')
            //可以试试图片调取自本地。调用本地资源，需要到pubspec.yaml中配置文件路径
            // image: new ExactAssetImage('images/lake.jpg'),
          ),
        ),
      child: new Column(
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                print('点击红色按钮事件');
              },
              color: const Color(0xffcc0000),
              child: new Text('红色按钮'),
            ),
            new Flexible(
              flex: 1,
              child: new RaisedButton(
                onPressed: () {
                  print('点击黄色按钮事件');
                },
                color: const Color(0xfff1c232),
                child: new Text('黄色按钮'),
              ),
            ),
            new RaisedButton(
              onPressed: () {
                print('点击粉色按钮事件');
              },
              color: const Color(0xffea9999),
              child: new Text('粉色按钮'),
            ),
          ]
      ),
    );
  }
}