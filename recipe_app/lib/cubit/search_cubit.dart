import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recips_app/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(InitialState());

  search() {
    emit(InitialState());
  }
}
