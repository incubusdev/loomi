

import 'package:dio/dio.dart';

class ApiExceptions {
  List<String>getExceptionMessage(DioException exception){
    switch (exception.type) {
      case DioExceptionType.badResponse:
      return [
        'Senha ou Login Incorretos',
        'Favor verificar se as informações inseridas estão corretas'
      ];   
      case DioExceptionType.connectionError:
      return [
        'Erro de conexão',
        'Favor verificar Url da requisição ou se os parâmetros estão corretos'
      ];   
      case DioExceptionType.connectionTimeout:
      return [
        'Time Out',
        'Favor verificar Url da requisição ou se os parâmetros estão corretos'
      ];   
      case DioExceptionType.cancel:
      return [
        'Requisição cancelada' , 'Verifique sua Api ou se os parâmetros estão inválidos',
      ]; 

      default:
      return[
        'Erro desconhecido' ,' Vamos direcionar sua conexão para uma API genêrica segurando o botão "Get Started!"'
      ];
      
    }
  }
}