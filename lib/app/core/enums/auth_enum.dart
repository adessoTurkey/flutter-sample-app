enum AuthEnums {
  login('login'),
  introOff('introOff'),
  token('token');

  final String path;
  const AuthEnums(this.path);
}
enum AuthenticationStatus { unknown, authenticated, unauthenticated }