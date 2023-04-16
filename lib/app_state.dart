import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _showFullList = true;
  bool get showFullList => _showFullList;
  set showFullList(bool _value) {
    _showFullList = _value;
  }

  DateTime? _selectDate = DateTime.fromMillisecondsSinceEpoch(1681223580000);
  DateTime? get selectDate => _selectDate;
  set selectDate(DateTime? _value) {
    _selectDate = _value;
  }

  List<String> _selectFriend = [];
  List<String> get selectFriend => _selectFriend;
  set selectFriend(List<String> _value) {
    _selectFriend = _value;
  }

  void addToSelectFriend(String _value) {
    _selectFriend.add(_value);
  }

  void removeFromSelectFriend(String _value) {
    _selectFriend.remove(_value);
  }

  void removeAtIndexFromSelectFriend(int _index) {
    _selectFriend.removeAt(_index);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
