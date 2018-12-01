
import 'package:flutter/material.dart';
import 'package:card_settings/card_settings.dart';

class OrderDetailPage extends StatelessWidget {
  final String id;

  OrderDetailPage(this.id);


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // control state only works if the field order never changes.
  // to support orientation changes, we assign a unique key to each field
  // if you only have one orientation, the _formKey is sufficient
  final GlobalKey<FormState> _nameKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _typeKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _ageKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _descriptionlKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _hobbiesKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _coatKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _maneKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _hasSpotsKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _spotKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _heightKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _weightKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _dateKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _timeKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _priceKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _phoneKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _emailKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('订单种植'),
      ),
      body: Form(
        key: _formKey,
        child: _detail(context),
      ),
      resizeToAvoidBottomPadding: false,
    );
  }

  CardSettings _detail(BuildContext context) {
    return CardSettings(
      children: <Widget>[
        CardSettingsHeader(
          label: '商户信息', 
          color: Theme.of(context).primaryColorLight),
        _businessName(),
        _number(),
        _paragraph(),
        _multiselect(),
        CardSettingsHeader(
            label: '订单量',
            color: Theme.of(context).primaryColorLight),
        _height(),
        _weight(),
        CardSettingsHeader(
            label: '农户信息',
            color: Theme.of(context).primaryColorLight),
        _instructions(),
        _datePicker(),
        _timePicker(),
        _currency(),
        _phone(),
        CardSettingsHeader(
            label: '科技信息',
            color: Theme.of(context).primaryColorLight),
        _email(),
        _password(),
        CardSettingsHeader(
            label: '动作',
            color: Theme.of(context).primaryColorLight),
        _saveButton(),
        _resetButton(),
      ],
    );
  }

  CardSettingsText _businessName() {
    return CardSettingsText(
      key: _nameKey,
      label: '名字',
      hintText: '请输入商户名称',
      requiredIndicator: Text('*', style: TextStyle(color: Colors.red),),
      autovalidate: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '必须要输入名称';
        }
        return null;
      },
      onSaved: (value) {print('$value');},
      onChanged: (value) {print('$value');},
    );
  }

  CardSettingsNumberPicker _number({TextAlign labelAlign}) {
    return CardSettingsNumberPicker(
      key: _ageKey,
      label: '年龄',
      labelAlign: labelAlign,
      initialValue: 10,
      max: 30,
      min: 1,
      validator: (value) {
        if (value == null) return '请输入年龄';
        if (value > 20) return '太老了';
        if (value < 5) return '太小了';
        return null;
      },
      onSaved: (value) {print('$value');},
      onChanged: (value) {print('$value');},
    );
  }

  CardSettingsParagraph _paragraph() {
    return CardSettingsParagraph(
      key: _descriptionlKey,
      label: '描述',
      initialValue: '这是一段描述，主要讲述的是北脑人创业艰难。太他妈难了。',
      numberOfLines: 3,
      onSaved: (value) {print('$value');},
      onChanged: (value) {print('$value');},
    );
  }

  CardSettingsMultiselect _multiselect() {
    return CardSettingsMultiselect(
      key: _hobbiesKey,
      label: '喜好',
      initialValues: ['操代码', '加班'],
      options: ['操代码', '加班', '通宵', '写PPT', '好好好'],
      onSaved: (value) {print('$value');},
      onChanged: (value) {print('$value');},
    );
  }

  CardSettingsDouble _height() {
    return CardSettingsDouble(
      key: _heightKey,
      label: '高度',
      unitLabel: '米',
      initialValue: 20.3,
      onSaved: (value) {print('$value');},
      onChanged: (value) {print('$value');},
    );
  }

  CardSettingsInt _weight() {
    return CardSettingsInt(
      key: _weightKey,
      label: '厚度',
      unitLabel: '脸皮',
      initialValue: 20,
      autovalidate: true,
      validator: (value) {
        if (value != null) {
          if (value > 70) return '太大了.';
          if (value < 10) return '太小了.';
        }
        return null;
      },
      onSaved: (value) {print('$value');},
      onChanged: (value) {print('$value');},
    );
  }

  CardSettingsInstructions _instructions() {
    return CardSettingsInstructions(
      text: '兰州真是个人杰地灵的好地方。',
      textColor: Colors.deepPurple,
    );
  }

  CardSettingsDatePicker _datePicker() {
    return CardSettingsDatePicker(
      key: _dateKey,
      icon: Icon(Icons.calendar_today),
      label: '日期',
      initialValue: DateTime.now(),
      onSaved: (value) {print('$value');},
      onChanged: (value) {print('$value');},
    );
  }

  CardSettingsTimePicker _timePicker() {
    return CardSettingsTimePicker(
      key: _timeKey,
      label: '时间',
      icon: Icon(Icons.access_time),
      initialValue: TimeOfDay(
        hour: 13,
        minute: 23
      ),
      onSaved: (value) {print('$value');},
      onChanged: (value) {print('$value');},
    );
  }

  CardSettingsCurrency _currency() {
    return CardSettingsCurrency(
      key: _priceKey,
      label: '价格',
      initialValue: 323.09,
      autovalidate: true,
      validator: (value) {
        if (value != null && value > 100) return '真不对';
        return null;
      },
      onSaved: (value) {print('$value');},
      onChanged: (value) {print('$value');},
    );
  }

  CardSettingsPhone _phone() {
    return CardSettingsPhone(
      key: _phoneKey,
      label: '电话号码',
      initialValue: 13893234323,
      autovalidate: true,
      validator: (value) {
        if (value != null && value > 100) return '真不对';
        return null;
      },
      onSaved: (value) {print('$value');},
      onChanged: (value) {print('$value');},
    );
  }

  CardSettingsEmail _email() {
    return CardSettingsEmail(
      key: _emailKey,
      label: '电子邮件',
      icon: Icon(Icons.email),
      initialValue: 'nb@northbrain.com',
      autovalidate: true,
      validator: (value) {
        if (value != null && value.isEmpty) return '真不对';
        return null;
      },
      onSaved: (value) {print('$value');},
      onChanged: (value) {print('$value');},
    );
  }

  CardSettingsPassword _password() {
    return CardSettingsPassword(
      key: _passwordKey,
      label: '密码',
      icon: Icon(Icons.lock),
      initialValue: '132323',
      validator: (value) {
        if (value != null && value.isEmpty) return '真不对';
        return null;
      },
      onSaved: (value) {print('$value');},
      onChanged: (value) {print('$value');},
    );
  }

  CardSettingsButton _saveButton() {
    return CardSettingsButton(
      label: '保存',
      backgroundColor: Colors.brown,
      textColor: Colors.white,
      onPressed: () => print('真的保存了。'),
    );
  }

  CardSettingsButton _resetButton() {
    return CardSettingsButton(
      label: '重置',
      backgroundColor: Colors.green,
      textColor: Colors.white,
      onPressed: () => print('真的保存了。'),
    );
  }
}