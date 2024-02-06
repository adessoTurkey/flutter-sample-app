

import 'package:flutter_movie_app/api_call/network/network.dart';
import '';

import 'data_source.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


final class RemoteDataSource extends DataSource {

  final NetworkService _networkService;
   RemoteDataSource():_networkService=NetworkService(baseUrl: dotenv.get('VAR_NAME'));

}
