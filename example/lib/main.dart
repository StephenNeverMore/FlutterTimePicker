import 'package:flutter/material.dart';
import 'package:time_picker/time_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        color: Colors.white70,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  onPressed: () => _showDatePicker(context),
                  child: Text("日期选择")),
              RaisedButton(
                  onPressed: () => _showDateTimePicker(context),
                  child: Text("日期选择")),
            ],
          ),
        ),
      ),
    );
  }

  _showDatePicker(BuildContext context) {
    DatePicker.showDatePicker(
      context,
      dateFormat: 'yyyy-MMMM-dd',
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确认', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
        ),
      minDateTime: DateTime(2000, 1,1,),
      maxDateTime: DateTime(2222, 1,1,),
      onConfirm: (date, list)=>print("选择时间为： $date , 选择的index为： $list")
    );
  }

  _showDateTimePicker(BuildContext context) {

    DatePicker.showDatePicker(
        context,
        dateFormat: 'yyyy-MMMM-dd-hh-MM-ss',
        pickerTheme: DateTimePickerTheme(
          showTitle: true,
          confirm: Text('确认', style: TextStyle(color: Colors.red)),
          cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
        ),
        minDateTime: DateTime(2000, 1,1,),
        maxDateTime: DateTime(2222, 1,1,),
        onConfirm: (date, list)=>print("选择时间为： $date , 选择的index为： $list")
    );
  }
}
