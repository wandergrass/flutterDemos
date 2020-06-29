import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TapboxA extends StatefulWidget{
  TapboxA({Key key}) : super(key: key);

  @override
  _TapboxAState createState() => new _TapboxAState();
}

class _TapboxAState extends State<TapboxA>{
  bool _active = false;

  void _handleTap(){
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("TapboxA"),
      ),
      child: new GestureDetector(
        onTap: _handleTap,
        child: Center(
          child: new Container(
            child: new Text(
              _active ? "Active" : "Inactive",
              style: new TextStyle(
                fontSize: 32
                ,color: Colors.green,
              ),
            ),
            width: 200.0,
            height: 200.0,
            decoration: new BoxDecoration(
              color: _active ? Colors.lightGreen[700] : Colors.grey[600],
            ),
          ),
        ),
      ),
    );
  }
}

class ParentWidget extends StatefulWidget{
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget>{
  bool _active = false;

  void _handleTapboxChanged(bool newValue){
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: TapboxB(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}

class TapboxB extends StatelessWidget{
  TapboxB({Key key,this.active,@required this.onChanged}) : super(key:key);
  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap(){
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            active ? "Active" : "Inactive",
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}