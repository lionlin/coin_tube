import 'package:flutter/material.dart';
import './start.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("COIN TUBE"), backgroundColor: Colors.blueAccent,),  //头部的标题AppBar
      //侧边栏填充内容
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(    //Material内置控件
              accountName: new Text('Hello lionlin'),      //用户名
              accountEmail: new Text('lionlin1987@sina.com'),    //用户邮箱
              currentAccountPicture: new GestureDetector(    //用户头像
                onTap: () => print('current user'),
                child: new CircleAvatar(    //圆形图标控件
                  //图片调取自网络
                  backgroundImage: new NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1523206070855&di=4b7343fd05c931ff949877387b7f5243&imgtype=0&src=http%3A%2F%2Fscimg.jb51.net%2Fallimg%2F170803%2F106-1FP310030TS.jpg'),
                ),
              ),
              decoration: new BoxDecoration(    //用一个BoxDecoration装饰器提供背景图片
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage('https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1523195981&di=8c77b6ed40f0070fc0205cc41d9a823b&src=http://n.sinaimg.cn/finance/transform/20170925/xDQk-fymesmp1386217.jpg')
                  //可以试试图片调取自本地。调用本地资源，需要到pubspec.yaml中配置文件路径
                  // image: new ExactAssetImage('images/lake.jpg'),
                ),
              ),
            ),
            new ListTile(    //第一个功能项
                title: new Text('DASHBOARD'),
                trailing: new Icon(Icons.arrow_right),
                leading: new CircleAvatar(    //圆形图标控件
                  //图片调取自网络
                  backgroundImage: new NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1523206070855&di=4b7343fd05c931ff949877387b7f5243&imgtype=0&src=http%3A%2F%2Fscimg.jb51.net%2Fallimg%2F170803%2F106-1FP310030TS.jpg'),
                ),//左侧首字母图标显示，不显示则传null
                onTap: () {
                  Navigator.of(context).pop();  //点击后收起侧边栏
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Start()));  //进入OtherPage页面，传入参数First Page
                }
            ),
            new Divider(),  //分割线控件
            new ListTile(    //第二个功能项
              title: new Text('ACCOUNT'),
              trailing: new Icon(Icons.arrow_right),
              leading: new CircleAvatar(    //圆形图标控件
                //图片调取自网络
                backgroundImage: new NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1523206070855&di=4b7343fd05c931ff949877387b7f5243&imgtype=0&src=http%3A%2F%2Fscimg.jb51.net%2Fallimg%2F170803%2F106-1FP310030TS.jpg'),
              ),//左侧首字母图标显示，不显示则传null
            ),
            new Divider(),  //分割线控件
            new ListTile(    //第二个功能项
              title: new Text('REAL TIME RATES'),
              trailing: new Icon(Icons.arrow_right),
              leading: new CircleAvatar(    //圆形图标控件
                //图片调取自网络
                backgroundImage: new NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1523206070855&di=4b7343fd05c931ff949877387b7f5243&imgtype=0&src=http%3A%2F%2Fscimg.jb51.net%2Fallimg%2F170803%2F106-1FP310030TS.jpg'),
              ),//左侧首字母图标显示，不显示则传null
            ),
            new Divider(),  //分割线控件
            new ListTile(    //第二个功能项
              title: new Text('SEND/RECEIVE'),
              trailing: new Icon(Icons.arrow_right),
              leading: new CircleAvatar(    //圆形图标控件
                //图片调取自网络
                backgroundImage: new NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1523206070855&di=4b7343fd05c931ff949877387b7f5243&imgtype=0&src=http%3A%2F%2Fscimg.jb51.net%2Fallimg%2F170803%2F106-1FP310030TS.jpg'),
              ),//左侧首字母图标显示，不显示则传null
            ),
            new Divider(),  //分割线控件
            new ListTile(    //第二个功能项
              title: new Text('BUY/SELL'),
              trailing: new Icon(Icons.arrow_right),
              leading: new CircleAvatar(    //圆形图标控件
                //图片调取自网络
                backgroundImage: new NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1523206070855&di=4b7343fd05c931ff949877387b7f5243&imgtype=0&src=http%3A%2F%2Fscimg.jb51.net%2Fallimg%2F170803%2F106-1FP310030TS.jpg'),
              ),//左侧首字母图标显示，不显示则传null
            ),
            new Divider(),  //分割线控件
            new ListTile(    //退出按钮
              title: new Text('Close'),
              trailing: new Icon(Icons.cancel),
              leading: new CircleAvatar(    //圆形图标控件
                //图片调取自网络
                backgroundImage: new NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1523206070855&di=4b7343fd05c931ff949877387b7f5243&imgtype=0&src=http%3A%2F%2Fscimg.jb51.net%2Fallimg%2F170803%2F106-1FP310030TS.jpg'),
              ),//左侧首字母图标显示，不显示则传null
              onTap: () => Navigator.of(context).pop(),    //点击后收起侧边栏
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Card(
                child: new Column(
                  children: <Widget>[
                    new CircleAvatar(    //圆形图标控件
                      //图片调取自网络
                      backgroundImage: new AssetImage('images/lake.jpg'),
                    ),
                    new Text('Hello John Doe',style: new TextStyle(fontSize: 35.0),),
                    new Text('last login: 10:33am 2018-04-10',style: new TextStyle(fontSize: 15.0),),
                  ],
                ),
              ),
            ),
            new Center(
              child: new Card(
                color: Colors.blue,
                child: new Column(
                  children: <Widget>[
                    new Text('Trading Balance',style: new TextStyle(fontSize: 18.0,color: Colors.white),),
                    new Text('\$6328.33 AUD',style: new TextStyle(fontSize: 25.0,color: Colors.white),),
                    new Text('\$590.22',style: new TextStyle(fontSize: 25.0,color: Colors.green),),
                  ],
                ),
              ),
            ),
            new Center(
              child: new Card(
                child: new Column(
                  children: <Widget>[
                    new Text('Cryptocurrency Watchlist',style: new TextStyle(fontSize: 18.0),),
                    new Container(
                      margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child: new Row(
                        children: <Widget>[
                          new CircleAvatar(    //圆形图标控件
                            //图片调取自网络
                            backgroundImage: new AssetImage('images/lake.jpg'),
                          ),
                          new Text('29 sept.17',style: new TextStyle(fontSize: 18.0),),
                          new Text('BITCOIN',style: new TextStyle(fontSize: 18.0),),
                          new Text('0.1800BTC',style: new TextStyle(fontSize: 18.0),),
                        ],
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child: new Row(
                        children: <Widget>[
                          new CircleAvatar(    //圆形图标控件
                            //图片调取自网络
                            backgroundImage: new AssetImage('images/lake.jpg'),
                          ),
                          new Text('29 sept.17',style: new TextStyle(fontSize: 18.0),),
                          new Text('BITCOIN',style: new TextStyle(fontSize: 18.0),),
                          new Text('0.1800BTC',style: new TextStyle(fontSize: 18.0),),
                        ],
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child: new Row(
                        children: <Widget>[
                          new CircleAvatar(    //圆形图标控件
                            //图片调取自网络
                            backgroundImage: new AssetImage('images/lake.jpg'),
                          ),
                          new Text('29 sept.17',style: new TextStyle(fontSize: 18.0),),
                          new Text('BITCOIN',style: new TextStyle(fontSize: 18.0),),
                          new Text('0.1800BTC',style: new TextStyle(fontSize: 18.0),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}