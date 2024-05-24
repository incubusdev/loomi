import 'dart:convert';

import 'package:loomiproject/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsService {
  static const String _key = 'key';

  static savePrefs(String cliente) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(_key, jsonEncode({'cliente': cliente, 'isAuth': true}));
  }


  static Future<User?> loadPrefs() async {
    if(await isAuth()){

    var prefs = await SharedPreferences.getInstance();
       var clienteString = prefs.getString(_key);
      Map<String,dynamic> tmp = jsonDecode(clienteString!);
      var jsonCliente = jsonDecode(tmp["cliente"]);
      
      var cliente = User.fromMap(jsonCliente);
      return cliente;
    }else{

    return null;
    }

  }


  static Future<bool>isAuth()async {
    var prefs = await SharedPreferences.getInstance();
    

    var jsonResult = prefs.getString(_key);
     if(jsonResult != null ){
      var mapCliente = jsonDecode(jsonResult);
      return mapCliente['isAuth'];
     }
     return false;
  }

   static Future<void> logOut()async{

    var prefs = await  SharedPreferences.getInstance();
    prefs.remove(_key);

  }
}
