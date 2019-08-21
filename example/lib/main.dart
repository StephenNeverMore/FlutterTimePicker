import 'package:flutter/material.dart';
import 'package:example/date_pick.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Time Picker",
      theme: ThemeData.light(),
      home: AppPage(),
      routes: <String, WidgetBuilder>{
        "/picker": (BuildContext context) => PickerPage()
      },
    );
  }
}

class AppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Time Picker")),
      body: Container(
        child: Center(
          child: RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/picker");
              },
              child: Text("时间选择")),
        ),
      ),
    );
  }
}
