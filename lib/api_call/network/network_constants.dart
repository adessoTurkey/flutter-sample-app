abstract final  class NetworkConstants{
    static Duration connectTimeout = const  Duration(milliseconds: 5000); 
    static Duration receiveTimeout = const  Duration(milliseconds: 3000);  
    static String contentType='application/json; charset=utf-8';
    static Map<String,String> headers={"accept": "application/json"};
}