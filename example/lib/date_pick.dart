import 'package:flutter/material.dart';
import 'package:time_picker/time_picker.dart';

class PickerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PickerState();
}

class _PickerState extends State<PickerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  _showPicker(context, DateTimePickerMode.date);
                },
                child: Text("日期选择")),
            ElevatedButton(
                onPressed: () {
                  _showPicker(context, DateTimePickerMode.datetime);
                },
                child: Text("日期+时间选择")),
            ElevatedButton(
                onPressed: () {
                  _showPicker(context, DateTimePickerMode.time);
                },
                child: Text('时间选择')),
          ],
        ),
      ),
    );
  }

  _showPicker(BuildContext context, DateTimePickerMode mode) {
    String format;
    const String MIN_DATETIME = '2010-01-01 00:00:00';
    const String MAX_DATETIME = '2021-12-31 23:59:59';
    switch (mode) {
      case DateTimePickerMode.date:
        format = 'yyyy-MMMM-dd';
        break;
      case DateTimePickerMode.datetime:
        format = 'yyyy年,M月,d日,H时:m分';
        break;
      case DateTimePickerMode.time:
        format = 'HH:mm:ss';
        break;
      default:
        format = 'yyyy-MMMM-dd';
        break;
    }

    DatePicker.showDatePicker(context,
        maxDateTime: DateTime.parse(MAX_DATETIME),
        minDateTime: DateTime.parse(MIN_DATETIME),
        pickerMode: mode,
        dateFormat: format, onConfirm: (dateTime, list) {
      print("onConfirm:  $dateTime    $list");
    }, onClose: () {
      print("onClose");
    }, onCancel: () {
      print("onCancel");
    }, onChange: (dateTime, list) {
      print("onChange:  $dateTime    $list");
    });
  }
}
