
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/api_call/models/request_token_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class RemoteDataSourceMock extends Mock implements RemoteDataSourceImpl{
}

void main(){


  RemoteDataSourceMock remoteDataSource = RemoteDataSourceMock();


  test("remote data source test", ()  async {

     RequestTokenModel requestTokenModel= await remoteDataSource.getRequestToken(); 

     expect(requestTokenModel, isNotEmpty);
  });
}