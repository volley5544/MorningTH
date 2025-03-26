import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _pinCode = prefs.getString('ff_pinCode') ?? _pinCode;
    });
    _safeInit(() {
      _username = prefs.getString('ff_username') ?? _username;
    });
    _safeInit(() {
      _employeeID = prefs.getString('ff_employeeID') ?? _employeeID;
    });
    _safeInit(() {
      _profilePhone = prefs.getString('ff_profilePhone') ?? _profilePhone;
    });
    _safeInit(() {
      _deviceId = prefs.getString('ff_deviceId') ?? _deviceId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _fromPinPage = false;
  bool get fromPinPage => _fromPinPage;
  set fromPinPage(bool value) {
    _fromPinPage = value;
  }

  String _pinCode = '';
  String get pinCode => _pinCode;
  set pinCode(String value) {
    _pinCode = value;
    prefs.setString('ff_pinCode', value);
  }

  bool _fromSetPin = false;
  bool get fromSetPin => _fromSetPin;
  set fromSetPin(bool value) {
    _fromSetPin = value;
  }

  bool _isLogin = false;
  bool get isLogin => _isLogin;
  set isLogin(bool value) {
    _isLogin = value;
  }

  String _username = '';
  String get username => _username;
  set username(String value) {
    _username = value;
    prefs.setString('ff_username', value);
  }

  List<String> _defaultList = ['Hello World', 'Hello World', 'Hello World'];
  List<String> get defaultList => _defaultList;
  set defaultList(List<String> value) {
    _defaultList = value;
  }

  void addToDefaultList(String value) {
    defaultList.add(value);
  }

  void removeFromDefaultList(String value) {
    defaultList.remove(value);
  }

  void removeAtIndexFromDefaultList(int index) {
    defaultList.removeAt(index);
  }

  void updateDefaultListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    defaultList[index] = updateFn(_defaultList[index]);
  }

  void insertAtIndexInDefaultList(int index, String value) {
    defaultList.insert(index, value);
  }

  List<String> _defaultList2 = [
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World'
  ];
  List<String> get defaultList2 => _defaultList2;
  set defaultList2(List<String> value) {
    _defaultList2 = value;
  }

  void addToDefaultList2(String value) {
    defaultList2.add(value);
  }

  void removeFromDefaultList2(String value) {
    defaultList2.remove(value);
  }

  void removeAtIndexFromDefaultList2(int index) {
    defaultList2.removeAt(index);
  }

  void updateDefaultList2AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    defaultList2[index] = updateFn(_defaultList2[index]);
  }

  void insertAtIndexInDefaultList2(int index, String value) {
    defaultList2.insert(index, value);
  }

  String _employeeID = '';
  String get employeeID => _employeeID;
  set employeeID(String value) {
    _employeeID = value;
    prefs.setString('ff_employeeID', value);
  }

  DocumentReference? _applicationConfigDocRef =
      FirebaseFirestore.instance.doc('/ApplicationConfig/RbnoLsDFZoqW4Ndvtrl7');
  DocumentReference? get applicationConfigDocRef => _applicationConfigDocRef;
  set applicationConfigDocRef(DocumentReference? value) {
    _applicationConfigDocRef = value;
  }

  String _profilePhone = '';
  String get profilePhone => _profilePhone;
  set profilePhone(String value) {
    _profilePhone = value;
    prefs.setString('ff_profilePhone', value);
  }

  String _deviceId = '';
  String get deviceId => _deviceId;
  set deviceId(String value) {
    _deviceId = value;
    prefs.setString('ff_deviceId', value);
  }

  bool _isLoginNew = false;
  bool get isLoginNew => _isLoginNew;
  set isLoginNew(bool value) {
    _isLoginNew = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
