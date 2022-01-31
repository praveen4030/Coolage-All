import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GoogleSignInFunctions {
  static Future<User?> handleSignIn(BuildContext context) async {
    try {} on PlatformException catch (e) {
      FlushbarHelper.createError(message: e.toString()).show(context);
    } on FirebaseAuthException catch (e) {
      FlushbarHelper.createError(message: e.toString()).show(context);
    } catch (e) {
      FlushbarHelper.createError(message: e.toString()).show(context);
    }
  }
}
