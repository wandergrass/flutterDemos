import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/whatsapp_home.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(//TODO 什么意思
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
      ),
      routes: {
        "/":(context) => WhatsAppHome(cameras: cameras),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
