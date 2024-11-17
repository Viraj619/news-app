
import 'package:news_app/models/indian.dart';

abstract class SuperHitStates{}
class InitialSuperHitState extends SuperHitStates{}
class LoadingSuperHitState extends SuperHitStates{}
class LoadedSuperHitState extends SuperHitStates{
  ArticlesDataModel sarticlesDataModel;
  LoadedSuperHitState({required this.sarticlesDataModel});
}
class ErrorSuperHitState extends SuperHitStates{
  String Error;
  ErrorSuperHitState({required this.Error});
}
