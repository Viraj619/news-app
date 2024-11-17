
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/doman/api_helper.dart';
import 'package:news_app/doman/exceptions.dart';
import 'package:news_app/doman/urls_page.dart';
import 'package:news_app/models/indian.dart';
import 'package:news_app/ui/bloc/default_news/news_events.dart';
import 'package:news_app/ui/bloc/default_news/news_states.dart';



class NewsBloc extends Bloc<NewsEvents,NewsStates>{
  ApiHelper apiHelper;
  NewsBloc({required this.apiHelper}): super(InitialState()){
    on<GetNews>((event,emit)async{
      emit(LoadingState());
      try{
        var resJson=await apiHelper.getNews(url: UrlsPage.url);
        if(resJson!=null){
          var mNews=ArticlesDataModel.fromJson(resJson);
          emit(LoadedState(mArticlesDataModel: mNews));
        }else{
          emit(ErrorState(error: "Error Occurred!!!"));
        }
      }catch(e){
        emit(ErrorState(error:(e as AppException).toErrorMsg()));
      }
    });
    /// state news
    on<GetStateNews>((event,emit)async{
      emit(LoadingState());
      try{
        var resJson=await apiHelper.getNews(url:UrlsPage.urlState);
        if(resJson!=null){
          var stateNews= ArticlesDataModel.fromJson(resJson);
          emit(LoadedState(mArticlesDataModel: stateNews));
        }else{
          emit(ErrorState(error: "Error Occurred!!!"));
        }
      } catch (e){
        emit(ErrorState(error: (e as AppException).toErrorMsg()));
      }

    });
  }
}