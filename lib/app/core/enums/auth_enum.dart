enum AuthEnums {
  login('login'),
  introOff('introOff'),
  sessionId('sessionId');

  final String path;
  const AuthEnums(this.path);
}
enum AuthenticationStatus { unknown, authenticated, unauthenticated }