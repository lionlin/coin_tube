import 'package:flutter/material.dart';
class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
//      backgroundColor: Colors.blueAccent,
      decoration: new BoxDecoration(    //用一个BoxDecoration装饰器提供背景图片
        image: new DecorationImage(
          fit: BoxFit.fill,
          // image: new NetworkImage('https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg')
          //可以试试图片调取自本地。调用本地资源，需要到pubspec.yaml中配置文件路径
          image: new ExactAssetImage('images/background.png'),
        ),),
      child: new Container(
        margin: new EdgeInsets.fromLTRB(0.0, 300.0, 0.0, 200.0),
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new RaisedButton(
                onPressed: () {
//                  print('点击红色按钮事件');
                },
                color: Colors.blue[400],
                child: new Text('sign in with your account',style: new TextStyle(color: Colors.white)),
              ),
              new Flexible(
                flex: 1,
                child: new RaisedButton(
                  onPressed: () {
//                    print('点击黄色按钮事件');
                  },
                  color: Colors.blue[400],
                  child: new Text('open an account',style: new TextStyle(color: Colors.white)),
                ),
              ),
            ]
        ),
      ),
    );
  }
}