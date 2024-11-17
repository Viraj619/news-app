import 'package:news_app/models/indian.dart';

abstract  class LifeStyleStates {}
 class InitialLifeState extends LifeStyleStates{}
class LoadingLifeState extends LifeStyleStates{}
class LoadedLifeState extends LifeStyleStates{
  ArticlesDataModel LarticlesDataModel;
  LoadedLifeState({required this.LarticlesDataModel});
}
class ErrorLifeState extends LifeStyleStates{
  String Error;
  ErrorLifeState({required this.Error});
}