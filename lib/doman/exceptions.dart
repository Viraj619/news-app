
class AppException implements Exception{
  String title;
  String msg;
  AppException({required this.title,required this.msg});

  String toErrorMsg(){
    return '$title: $msg';
  }
}

class FetchException extends AppException{
  FetchException({required String errorMsg}) :super(title: "Network",msg:errorMsg);
}
class BadRequestException extends AppException{
  BadRequestException({required String errorMsg}): super(title:"Invalid Request",msg:errorMsg);
}
class UnauthorisedException extends AppException{
  UnauthorisedException({required String errorMsg}):super(title:"Unauthorised",msg:errorMsg);
}

class InvalidException extends AppException{
  InvalidException({required String errorMsg}): super(title:"Invalid",msg:errorMsg);
}

