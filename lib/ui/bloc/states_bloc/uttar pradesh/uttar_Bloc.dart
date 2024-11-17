import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/doman/api_helper.dart';
import 'package:news_app/doman/urls_page.dart';
import 'package:news_app/models/indian.dart';
import 'package:news_app/ui/bloc/states_bloc/uttar%20pradesh/uttar_event.dart';
import 'package:news_app/ui/bloc/states_bloc/uttar%20pradesh/uttar_state.dart';

class UttarBloc extends Bloc<UttarEvent,UttarState>{
  ApiHelper apiHelper;
  UttarBloc({required this.apiHelper}):super(InitialUttarState()){
    on<GetUttarNews>((event,emit)async{
      emit(LoadingUttarState());
      try{
        var resData=await apiHelper.getNews(url:UrlsPage.getSearchUrl(event.quiry));
        if(resData!=null){
          var UttarData=ArticlesDataModel.fromJson(resData);
          emit(LoadedUttarState(UarticalDataModel: UttarData));
        }else{
          emit(ErrorUttarStates(Error: "Error Occurred !!!"));
        }
      }catch (e){
        emit(ErrorUttarStates(Error:e.toString()));
      }
    });
  }
}