import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/doman/api_helper.dart';
import 'package:news_app/doman/urls_page.dart';
import 'package:news_app/models/indian.dart';
import 'package:news_app/ui/bloc/life%20style%20bloc/life_style_events.dart';
import 'package:news_app/ui/bloc/life%20style%20bloc/life_style_states.dart';

class LifeBloc extends Bloc<LifeStyleEvents,LifeStyleStates>{
  ApiHelper apiHelper;
  LifeBloc({required this.apiHelper}):super(InitialLifeState()){
    on<GetLifeStyle>((event,emit)async{
      emit(LoadingLifeState());
      try{
        var resData=await apiHelper.getNews(url: UrlsPage.getSearchUrl(event.query));
        if(resData!=null){
          var lifeData=ArticlesDataModel.fromJson(resData);
          emit(LoadedLifeState(LarticlesDataModel: lifeData));
        }else{
          emit(ErrorLifeState(Error: "Error Occurred !!!"));
        }
      }catch (e){
        emit(ErrorLifeState(Error: e.toString()));
      }
    });
  }
}