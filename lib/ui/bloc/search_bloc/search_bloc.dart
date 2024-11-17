import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/doman/api_helper.dart';
import 'package:news_app/doman/exceptions.dart';
import 'package:news_app/doman/urls_page.dart';
import 'package:news_app/models/indian.dart';
import 'package:news_app/ui/bloc/search_bloc/search_events.dart';
import 'package:news_app/ui/bloc/search_bloc/search_states.dart';

class SearchBloc extends Bloc<SearchEvents,SearchStates>{
  ApiHelper apiHelper;
  SearchBloc({required this.apiHelper}): super(InitialSearchState()){

    /// searchNews
    on<GetSearchNews>((event,emit)async{
      emit(LoadingSearchState());
      try{
        var resJson=await apiHelper.getNews(url:UrlsPage.getSearchUrl(event.query));
        if(resJson!=null){
          var mSearch= ArticlesDataModel.fromJson(resJson);
          emit(LoadedSearchState(sArticlesDataModel:mSearch));
        }else{
        emit(ErrorSearchState(error:"Error Occurred!!!"));
        }
      }catch (e){
       emit(ErrorSearchState(error: (e as AppException).toErrorMsg()));
      }
    });
  }
}