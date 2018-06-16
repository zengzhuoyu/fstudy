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

import 'ShoppingListItem.dart';
class ShoppingList extends StatefulWidget {

  ShoppingList({Key key, this.products}) : super(key: key);
  final List<Product> products;

  @override
  _ShoppingListState createState() => new _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {

  Set<Product> _shoppingCart = new Set<Product>();
  void _handleCartChanged(Product product, bool inCart) {
    setState(
            () {
          if (inCart)
            _shoppingCart.add(product);
          else
            _shoppingCart.remove(product);
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('购物清单'),
      ),
      body: new ListView(
        children: widget.products.map(
                (Product product) {
              return new ShoppingListItem(
                product: product,
                inCart: _shoppingCart.contains(product),
                onCartChanged: _handleCartChanged,
              );
            }
        ).toList(),
      ),
    );
  }
}

final List<Product> _kProducts = <Product>[
  new Product(name: '鸡蛋'),
  new Product(name: '面粉'),
  new Product(name: '巧克力脆片'),
];

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter教程',
      home: new ShoppingList(products: _kProducts),
    ),
  );
}