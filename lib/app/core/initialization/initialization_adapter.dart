/// This adapter pattern interface might be implemented
/// when  class/package/plugin
/// needs to be registered in the main file
abstract interface class InitializationAdapter {
  void initialize();
}
