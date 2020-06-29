import 'package:flutter/material.dart';
import 'package:flutterappthreepartdemos/StatusManager.dart';
import 'TextStatusManager.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "CounterWidget":(context) => CounterWidget(initValue: ModalRoute.of(context).settings.arguments,),
        "ContextRoute":(context) => ContextRoute(),
        "/":(context){
          return TextUseDemo();
//          return ParentWidget();
//          return TapboxA();
//          return Echo(text: "Hello world!",backgroundColor: Colors.green,);
        },
      },
    );
  }
}
//TipRoute(text: ModalRoute.of(context).settings.arguments);
class Echo extends StatelessWidget{
  const Echo({Key key,@required this.text,this.backgroundColor}) : super(key:key);
  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Echo"),
      ),
      body: Center(

        child: Container(
          padding: EdgeInsets.all(12),
          color: backgroundColor,
          child: Column(
            children: <Widget>[
              Text(text,style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
              RaisedButton(
                child: Text("goto ContextRoute"),
                onPressed: (){
                  Navigator.pushNamed(context, "ContextRoute");
                },
              ),
              RaisedButton(
                child: Text("goto CounterWidget"),
                onPressed: (){
                  Navigator.pushNamed(context, "CounterWidget",arguments: 1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContextRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Context测试"),
      ),
      body: Container(
        child: Builder(builder: (context){
          Scaffold scaffold = context.findAncestorWidgetOfExactType<Scaffold>();
          return (scaffold.appBar as AppBar).title;
        },),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget{
  const CounterWidget({Key key,this.initValue: 0}) : super(key:key);

  final int initValue;
  @override
  _CounterWidgetState createState() => new _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget>{
  int _counter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counter = widget.initValue;
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("CounterWidget"),
      ),
      body: Center(
        child: FlatButton(
          color: Colors.blue,
          child: Text("$_counter",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
          onPressed: ()=>setState(()=> ++_counter,
        ),),
      ),
    );
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}