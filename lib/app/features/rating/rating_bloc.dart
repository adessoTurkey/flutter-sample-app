import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/rating/post_rating/response/rating_response_model.dart';
import 'package:flutter_movie_app/app/core/enums/network_fetch_status.dart';
import 'package:collection/collection.dart';
import '../movie_detail/models/rating/rated_list/rated_list_response.dart';

part 'rating_event.dart';
part 'rating_state.dart';

class RatingBloc extends Bloc<RatingEvent, RatingState> {
  final RemoteDataSource remoteDataSource;

  RatingBloc(this.remoteDataSource)
      : super(const RatingState(status:  NetworkFetchStatus.initial)) {
    on<AddRatingEvent>(_addRatingEventTriggered);
    on<RatingCollapsedEvent>(_ratingCollapsedTriggered);
    on<RatingInitialEvent>(_ratingInitialTriggered);
  }

  Future<void> _addRatingEventTriggered(
      AddRatingEvent event, Emitter<RatingState> emit) async {
    try {
      RatingResponseModel response = await remoteDataSource.postRating(
        event.endPoint,
        event.id,
        event.ratingValue,
      );
      emit(
        state.copyWith(
          ratingValue: event.ratingValue,
          ratingResponseModel: response,
        ),
      );
    } catch (e) {
      emit(state.copyWith(
        status: NetworkFetchStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _ratingCollapsedTriggered(
      RatingCollapsedEvent event, Emitter<RatingState> emit) async {
    emit(state.copyWith(isCollapsed: !event.isCollapsed));
  }

  Future<void> _ratingInitialTriggered(RatingInitialEvent event, Emitter<RatingState> emit) async {
    late List<RatedListResponse>? ratedList;

    try {
      await remoteDataSource
          .getRatedList(RatingEnpoints.fetchRatingMovies)
          .then((value) => ratedList = value);
      RatedListResponse? checkRated = ratedList?.firstWhereOrNull((element) => element.id == event.id);
      emit(state.copyWith(isCollapsed: true, ratingValue: checkRated?.rating?.toInt(), status: NetworkFetchStatus.success));
    }
    catch(e){
      emit(state.copyWith(
        status: NetworkFetchStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }
}
