import 'package:flutter/material.dart';

//void main() {
//  runApp(new Center(child: new Text('你好，世界！', textDirection: TextDirection.ltr)));
//}

//class MyAppBar extends StatelessWidget {
//
//  MyAppBar({this.title});
//  final Widget title;
//
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      height: 56.0,
//      padding: const EdgeInsets.symmetric(horizontal: 8.0),
//      decoration: new BoxDecoration(color: Colors.blue[500]),
//      child: new Row(
//        children: <Widget>[
//          new IconButton(
//            icon: new Icon(Icons.menu),
//            tooltip: '导航菜单',
//            onPressed: null,
//          ),
//          new Expanded(
//            child: title,
//          ),
//          new IconButton(
//            icon: new Icon(Icons.search),
//            tooltip: '搜索',
//            onPressed: null,
//          ),
//        ],
//      ),
//    );
//  }
//}
//
//class MyScaffold extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return new Material(
//      child: new Column(
//        children: <Widget>[
//          new MyAppBar(
//            title: new Text('实例标题', style: Theme.of(context).primaryTextTheme.title),
//          ),
//          new Expanded(
//            child: new Center(
//              child: new Text('你好，世界！'),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
//
//void main() {
//  runApp(new MaterialApp(
//    title: '我的应用',
//    home: new MyScaffold(),
//  ));
//}

//void main() {
//  runApp(new MaterialApp(
//    title: 'Flutter教程',
//    home: new MyButton(),
//  ));
//}
//
//class MyButton extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return new GestureDetector(
//      onTap: () {
//        print('MyButton被监听了！');
//      },
//      child: new Container(
//        height: 36.0,
//        padding: const EdgeInsets.all(8.0),
//        margin: const EdgeInsets.symmetric(horizontal: 8.0),
//        decoration: new BoxDecoration(
//          borderRadius: new BorderRadius.circular(5.0),
//          color: Colors.lightGreen[500],
//        ),
//        child: new Center(
//          child: new Text('点击监听'),
//        ),
//      ),
//    );
//  }
//}

//void main() {
//  runApp(
//    new MaterialApp(
//      title: 'Flutter实例',
//      home: new Counter(),
//    ),
//  );
//}
//class Counter extends StatefulWidget {
//
//  @override
//  _CounterState createState() => new _CounterState();
//}
//
//class _CounterState extends State<Counter> {
//
//  int _count = 0;
//
//  void _increment() {
//    setState(
//            () {
//          _count += 1;
//        }
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Flutter实例'),
//      ),
//      body: new Center(
//        child: new Text(
//            '按钮点击 $_count 次${ _count == 0 ? '' : '' }'),
//      ),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: _increment,
//        tooltip: '增加',
//        child: new Icon(Icons.add),
//      ),
//    );
//  }
//}

//void main() {
//  runApp(
//    new MaterialApp(
//      title: 'Flutter实例',
//      home: new Counter(),
//    ),
//  );
//}
//
//class CounterDisplay extends StatelessWidget {
//  CounterDisplay({this.count});
//  final int count;
//
//  @override
//  Widget build(BuildContext context) {
//    return new Center(
//      child: new Text('按钮点击 $count 次'),
//    );
//  }
//}
//
//class CounterIncrementor extends StatelessWidget {
//  CounterIncrementor({this.onPressed});
//  final VoidCallback onPressed;
//
//  @override
//  Widget build(BuildContext context) {
//    return new FloatingActionButton(
//      onPressed: onPressed,
//      tooltip: '增加',
//      child: new Icon(Icons.add),
//    );
//  }
//}
//
//class Counter extends StatefulWidget {
//
//  @override
//  _CounterState createState() => new _CounterState();
//}
//
//class _CounterState extends State<Counter> {
//
//  int _count = 0;
//  void _increment() {
//    setState(
//            () {
//          _count += 1;
//        }
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Flutter实例'),
//      ),
//      body: new CounterDisplay(count: _count),
//      floatingActionButton: new CounterIncrementor(onPressed: _increment),
//    );
//  }
//}

//import 'ShoppingListItem.dart';
//class ShoppingList extends StatefulWidget {
//
//  ShoppingList({Key key, this.products}) : super(key: key);
//  final List<Product> products;
//
//  @override
//  _ShoppingListState createState() => new _ShoppingListState();
//}
//
//class _ShoppingListState extends State<ShoppingList> {
//
//  Set<Product> _shoppingCart = new Set<Product>();
//  void _handleCartChanged(Product product, bool inCart) {
//    setState(
//            () {
//          if (inCart)
//            _shoppingCart.add(product);
//          else
//            _shoppingCart.remove(product);
//        }
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('购物清单'),
//      ),
//      body: new ListView(
//        children: widget.products.map(
//                (Product product) {
//              return new ShoppingListItem(
//                product: product,
//                inCart: _shoppingCart.contains(product),
//                onCartChanged: _handleCartChanged,
//              );
//            }
//        ).toList(),
//      ),
//    );
//  }
//}
//
//final List<Product> _kProducts = <Product>[
//  new Product(name: '鸡蛋'),
//  new Product(name: '面粉'),
//  new Product(name: '巧克力脆片'),
//];
//
//void main() {
//  runApp(
//    new MaterialApp(
//      title: 'Flutter教程',
//      home: new ShoppingList(products: _kProducts),
//    ),
//  );
//}

//class ContainerDemo extends StatelessWidget {
//
////  @override
////  Widget build(BuildContext context) {
////    return new Center(
////      child: new Container(
////        width: 128.0,
////        height: 128.0,
////        decoration: new BoxDecoration(
////          color: Colors.lightBlueAccent[100],
////        ),
////      ),
////    );
////  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Center(
//      child: new Container(
//        width: 300.0,
//        height: 400.0,
//        decoration: new BoxDecoration(
//          color: const Color(0xfffce5cd),
//          border: new Border.all(
//            color: const Color(0xff6d9eeb),
//            width: 8.0,
//          ),
//        ),
//        child: new Text('容器演示'),
//      ),
//    );
//  }
//}
//
//void main() {
//  runApp(
//    new MaterialApp(
//      title: 'Flutter教程',
//      home: new ContainerDemo(),
//    ),
//  );
//}

//class ContainerDemo extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('文本控件'),
//      ),
//      body: new Column(
//          children: <Widget>[
//            new Text(
//              '红色+黑色删除线+25号',
//              style: new TextStyle(
//                color: const Color(0xffff0000),
//                decoration: TextDecoration.lineThrough,
//                decorationColor: const Color(0xff000000),
//                fontSize: 25.0,
//              ),
//            ),
//            new Text(
//              '橙色+下划线+24号',
//              style: new TextStyle(
//                color: const Color(0xffff9900),
//                decoration: TextDecoration.underline,
//                fontSize: 24.0,
//              ),
//            ),
//            new Text(
//              '虚线上划线+23号+倾斜',
//              style: new TextStyle(
//                decoration: TextDecoration.overline,
//                decorationStyle: TextDecorationStyle.dashed,
//                fontSize: 23.0,
//                fontStyle: FontStyle.italic,
//              ),
//            ),
//            new Text(
//              'serif字体+24号',
//              style: new TextStyle(
//                fontFamily: 'serif',
//                fontSize: 26.0,
//              ),
//            ),
//            new Text(
//              'monospace字体+24号+加粗',
//              style: new TextStyle(
//                fontFamily: 'monospace',
//                fontSize: 24.0,
//                fontWeight: FontWeight.bold,
//              ),
//            ),
//            new Text(
//              '天蓝色+25号+2行跨度',
//              style: new TextStyle(
//                color: const Color(0xff4a86e8),
//                fontSize: 25.0,
//                height: 2.0,
//              ),
//            ),
//            new Text(
//              '24号+2个字母间隔',
//              style: new TextStyle(
//                fontSize: 24.0,
//                letterSpacing: 2.0,
//              ),
//            ),
//          ]
//      ),
//    );
//  }
//}
//void main() {
//  runApp(
//    new MaterialApp(
//      title: 'Flutter教程',
//      home: new ContainerDemo(),
//    ),
//  );
//}

//class ImageDemo extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('从URL地址获取图像'),
//      ),
//      body: new Center(
//        child: new Image.network(
//          'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
//          scale: 2.0,
//        ),
//      ),
//    );
//  }
//}
//
//void main() {
//  runApp(
//    new MaterialApp(
//      title: 'Flutter教程',
//      home: new ImageDemo(),
//    ),
//  );
//}

//class ImageDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('从本地获取图像'),
//      ),
//      body: new Center(
//        child: new Container(
//          decoration: new BoxDecoration(
//            image: new DecorationImage(
//                image: new AssetImage('images/cr7.jpg')
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//void main() {
//  runApp(
//    new MaterialApp(
//      title: 'Flutter教程',
//      home: new ImageDemo(),
//    ),
//  );
//}

//class LayoutDemo extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('水平方向布局'),
//      ),
//      body: new Row(//Column 垂直
//          children: <Widget>[
//            new RaisedButton(
//              onPressed: () {
//                print('点击红色按钮事件');
//              },
//              color: const Color(0xffcc0000),
//              child: new Text('红色按钮'),
//            ),
//            new Flexible(
//              flex: 1,
//              fit: FlexFit.tight,
//              child: new RaisedButton(
//                onPressed: () {
//                  print('yellow button');
//                },
//                color: const Color(0xfff1c232),
//                child: new Text('黄色按钮'),
//              ),
//            ),
//            new RaisedButton(
//              onPressed: () {
//                print('点击粉色按钮事件');
//              },
//              color: const Color(0xffea9999),
//              child: new Text('粉色按钮'),
//            ),
//          ]
//      ),
//    );
//  }
//}
//void main() {
//  runApp(
//    new MaterialApp(
//      title: 'Flutter教程',
//      home: new LayoutDemo(),
//    ),
//  );
//}

class LayoutDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('层叠定位布局'),
      ),
      body:new Center(
        child: new Stack(
            children: <Widget>[
              new Image.network('http://img2.cxtuku.com/00/13/12/s97783873391.jpg'),
              new Positioned(
                left: 35.0,
                right: 35.0,
                top: 45.0,
                child: new Text(
                  'Whatever is worth doing is worth doing well. ๑•ิ.•ั๑',
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'serif',
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter教程',
      home: new LayoutDemo(),
    ),
  );
}