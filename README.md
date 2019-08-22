# Flutter Time Picker

Flutter 时间选择器，iOS样式

原版：https://github.com/wuzhendev/flutter-cupertino-date-picker

github： https://github.com/StephenNeverMore/FlutterTimePicker

在原版的基础上支持了年月日时分秒的选择样式

![示例](https://github.com/StephenNeverMore/FlutterTimePicker/blob/master/image/1.png?raw=true)

## Getting Started

### 1，依赖与获取
    在项目的 pubspec.yaml 文件中添加依赖：
```
    dependencies:
        time_picker: ^0.0.1
```

    执行 flutter packages get

### 2，导入
```
    import 'package:time_picker/time_picker.dart';
```

### 3，使用
```
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
```
