// ignore_for_file: unused_import

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

/// Manages user login session
class UserSessionManager {
  final _prefs = SharedPreferences.getInstance();

  UserSessionManager._();

  static UserSessionManager? _instance;

  factory UserSessionManager() => _instance ??= UserSessionManager._();

  Future<void> saveUserId(String? uid) async {
    var preferences = await _prefs;
    await preferences.setString('uid', uid ?? '');
  }

  Future<void> deleteUserId() async {
    var preferences = await _prefs;
    await preferences.remove('uid');
  }

  Future<bool> get isUserLoggedIn async {
    var preferences = await _prefs;
    return preferences.containsKey('uid') &&
        preferences.getString('uid') != null;
  }
}
