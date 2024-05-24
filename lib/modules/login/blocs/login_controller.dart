import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:loomiproject/data/services/info_App_Service.dart';
import 'package:loomiproject/data/services/prefs_service/prefs_service.dart';
import 'package:loomiproject/models/user_model.dart';
class LoginController extends GetxController { 


RxBool icon =  true.obs;
RxBool isHoverButtom2 =  false.obs;
TextEditingController emailTxt = TextEditingController();
TextEditingController passwordTxt = TextEditingController();
TextEditingController confirmPasswordTxt = TextEditingController();
       RxString emailCliente = ''.obs;
       RxString nomeCliente =  ''.obs;
User? clienteLogado;
var  _googleSingIn = GoogleSignIn();
var googleAccount = Rx<GoogleSignInAccount?>(null);






  Future<void>googleLogin()async {

try {
  await _googleSingIn.signIn();
} catch (e) {
  googleAccount.value = await _googleSingIn.signInSilently();
  if(googleAccount.value != null){

  await loadClienteLogado();
  }

}
  }
Future<void> loadClienteLogado()async{
    
    var cliente =  await PrefsService.loadPrefs();
    clienteLogado = cliente;
    if(clienteLogado != null){
      emailCliente.value = clienteLogado!.email;
      nomeCliente.value = clienteLogado!.username ;
  
      
      InfoAppService.clienteLogado = clienteLogado;
    }

  }

}