
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/doman/api_helper.dart';
import 'package:news_app/doman/urls_page.dart';
import 'package:news_app/models/indian.dart';
import 'package:news_app/ui/bloc/super_hit_bloc/super_hit_news_event.dart';
import 'package:news_app/ui/bloc/super_hit_bloc/super_hit_states.dart';

class SuperHitBloc extends Bloc<SuperHitNewsEvents,SuperHitStates>{
  ApiHelper apiHelper;
  SuperHitBloc({required this.apiHelper}):super(InitialSuperHitState()){
    on<GetSuperHitNews>((event,emit)async{
      emit(LoadingSuperHitState());
      try{
        var resData =await apiHelper.getNews(url:UrlsPage.getSearchUrl(event.query));
        if(resData!=null){
          var mSuperHitData=ArticlesDataModel.fromJson(resData);
          emit(LoadedSuperHitState(sarticlesDataModel: mSuperHitData));
          //emit(LoadedSuperHitState(sarticlesDataModel: mSuperHitData));
        }else{
          emit(ErrorSuperHitState(Error:"Error Occurred !!"));
        }
      }catch (e){
        emit(ErrorSuperHitState(Error: e.toString()));
      }
    });
  }
}