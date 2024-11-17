import 'package:news_app/models/indian.dart';

abstract class UttarState{}
class InitialUttarState extends UttarState{}
class LoadingUttarState extends UttarState{}
class LoadedUttarState extends UttarState{
  ArticlesDataModel UarticalDataModel;
  LoadedUttarState({required this.UarticalDataModel});
}
class ErrorUttarStates extends UttarState{
  String Error;
  ErrorUttarStates({required this.Error});
}