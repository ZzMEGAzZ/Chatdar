import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

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

  bool _ShowFullList = true;
  bool get ShowFullList => _ShowFullList;
  set ShowFullList(bool _value) {
    _ShowFullList = _value;
  }

  DateTime? _selectDate = DateTime.fromMillisecondsSinceEpoch(1672592400000);
  DateTime? get selectDate => _selectDate;
  set selectDate(DateTime? _value) {
    _selectDate = _value;
  }

  DateTime? _DefaultDate = DateTime.fromMillisecondsSinceEpoch(1672506000000);
  DateTime? get DefaultDate => _DefaultDate;
  set DefaultDate(DateTime? _value) {
    _DefaultDate = _value;
  }

  bool _CalendarShowState = false;
  bool get CalendarShowState => _CalendarShowState;
  set CalendarShowState(bool _value) {
    _CalendarShowState = _value;
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
