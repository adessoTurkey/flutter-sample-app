import '../../../api_call/models/favorite/response/add_to_favorite_response.dart';

extension AddToFavoriteResponseExt on AddToFavoriteResponse {
  bool get isFavorite => statusCode == 1;
}
