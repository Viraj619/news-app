import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart'as httpClient;
import 'package:news_app/doman/exceptions.dart';

 class ApiHelper{
  Future<dynamic> getNews({required String url})async{
    var res= await httpClient.get(Uri.parse(url));
    try{
      return returnResponseRequest(res);
    }on SocketException catch(e){
      throw FetchException(errorMsg: "No Internet");
    }
  }
  dynamic returnResponseRequest(httpClient.Response response){
    switch(response.statusCode){
      case 200:{
        var mData=jsonDecode(response.body);
        return mData;
      }
      case 400:
        throw BadRequestException(errorMsg:response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(errorMsg: response.body.toString());
      case 500:
      default:
        throw FetchException(errorMsg: "Error Occurred while communicating with statesCode ${response.body.toString()}");

    }
  }
 }