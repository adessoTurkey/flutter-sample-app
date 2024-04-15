import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/api_call/api_repositories/api_repositories.dart';
import '../../../core/enums/tv_series_category_enum.dart';
import '../models/tv_series_data/tv_series_data.dart';

part 'tv_series_event.dart';
part 'tv_series_state.dart';

class TvSeriesBloc extends Bloc<TvSeriesEvent, TvSeriesState> {
  final RemoteDataSource remoteDataSource;
  TvSeriesBloc(this.remoteDataSource) : super(TvSeriesInitial()) {
    on<TvSeriesFetching>(_tvSeriesFetched);
    on<CarouselSliding>(_carouselSliding);
  }

  late List<TvSeriesData> list;

  Future<void> _tvSeriesFetched(TvSeriesFetching event, Emitter<TvSeriesState> emit) async {
    try {
      emit(TvSeriesLoading());

      List<TvSeriesData> tvSeriesList =
      await remoteDataSource.getTvSeries(event.categoryType);
      list = tvSeriesList;
      emit(TvSeriesSuccess(tvSeriesList: tvSeriesList, tvSeries: tvSeriesList.first));
    } catch (e) {
      emit(TvSeriesError(errorMessage: e.toString()));
    }
  }

  void _carouselSliding(CarouselSliding event, Emitter<TvSeriesState> emit) {
    emit(CarouselSlideSuccess(tvSeriesModel: list[event.currentIndex]));
  }
}
