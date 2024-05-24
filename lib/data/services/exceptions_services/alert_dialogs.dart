import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loomiproject/data/services/exceptions_services/api_exceptions.dart';


class AlertDialogs {
  ApiExceptions apiExceptions = ApiExceptions();

  void showAlert({DioException? dioException,Function()? activeFunctionToTryAgain}) {
    // var errors = apiExceptions.getExceptionMessage(dioException!);
    Get.dialog(barrierDismissible: false ,Dialog(
       
      backgroundColor: Colors.transparent,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.black),
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
          'No connection',
          style: TextStyle(color: Colors.white),
        ),
        TextButton(onPressed: (){

          activeFunctionToTryAgain!();
          Get.back();
          }, child: Text('Try again'))
              ],
            )),
      ),
    ));
  }
}
