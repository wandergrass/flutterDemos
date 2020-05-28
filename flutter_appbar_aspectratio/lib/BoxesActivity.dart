
import 'package:flutter/material.dart';

class BoxesPage extends StatefulWidget{
  BoxesPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _BoxesPageState createState() => _BoxesPageState();
}

class _BoxesPageState extends State<BoxesPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 12,
                  height: 12,
                ),
                RaisedButton(
                  child: Text("ConstraintedBox"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Scaffold(
                        appBar: AppBar(
                          title: Text("ConstraintedBox"),
                        ),
                        body: Center(

                          child: ConstrainedBox(
                            constraints: BoxConstraints(maxHeight: 30,maxWidth: 300),
                            child: Container(height: 314,width: 314,color: Colors.red),
                          ),
                        ),
                      );
                    }));
                  },
                ),
                SizedBox(
                  width: 12,
                  height: 12,
                ),
                RaisedButton(
                  child: Text("UnconstraintedBox"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Scaffold(
                        appBar: AppBar(
                          title: Text("UnconstraintedBox"),
                        ),
                        body: Container(
                          height: 200,
                          width: 100,
                          alignment: Alignment.topLeft,
                          child: UnconstrainedBox(
                            child: Container(height: 314,width: 314,color: Colors.red),
                          ),
                        ),
                      );
                    }));
                  },
                ),
                Spacer(),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 12,
                  height: 12,
                ),
                RaisedButton(
                  child: Text("AspectRatio"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Scaffold(
                        appBar: AppBar(
                          title: Text("SizedBox"),
                        ),
                        body: AspectRatio(
                          aspectRatio: 5,
                          child: Container(color: Colors.red),
                        ),
                      );
                    }));
                  },
                ),
                SizedBox(
                  width: 12,
                  height: 12,
                ),
                RaisedButton(
                  child: Text("FractionallySizedBox"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Scaffold(
                        appBar: AppBar(
                          title: Text("FractionallySizedBox"),
                        ),
                        body: FractionallySizedBox(
                          widthFactor: 0.5,
                          heightFactor: 0.5,
                          child: Container(color: Colors.red),
                        ),
                      );
                    }));
                  },
                ),
                Spacer()
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 12,
                  height: 12,
                ),
                RaisedButton(
                  child: Text("SizedBox"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Scaffold(
                        appBar: AppBar(
                          title: Text("固定尺寸"),
                        ),
                        body: SizedBox(
                          height: 100,
                          width: 100,
                          child: Container(height: 314,width: 314,color: Colors.red),
                        ),
                      );
                    }));
                  },
                ),
                SizedBox(
                  width: 12,
                  height: 12,
                ),
                RaisedButton(
                  child: Text("LimitedBox"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Scaffold(
                        appBar: AppBar(
                          title: Text("LimitedBox"),
                        ),
                        body: ListView(
                          children: <Widget>[
                            LimitedBox(
                              maxHeight: 100,
                              maxWidth: 375,
                              child: Container(
                                color: Colors.green,
                              ),
                            ),
                            LimitedBox(
                              maxHeight: 100,
                              maxWidth: 375,
                              child: Container(
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      );
                    }));
                  },
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}