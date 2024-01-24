# flutter-sample-app

1. Using scripts (use in your terminal)

    1.1 Flutter Version Management (FVM) activate on your device: sh scripts/activate_fvm.sh

    1.2 Generate new route: sh scripts/auto_route_run.sh

    1.3 Freezed model creation: sh scripts/freezed_build.sh

    1.4 Generate assets after you add new asset to assets/ folder: sh scripts/gen_assets.sh

    1.5 Generate new localization strings : sh scripts/gen_localization.sh

2. Code Snippets (type prefix in your dart file)

    4.1  Add new Freezed model: prefix: afm


3. How to add new localization strings?

    2.1 Add strings to .arb files (lib/l10n/)
    2.2 Run this command on your terminal : sh scripts/gen_localization.sh

4. How to add new assets ?

    3.1 Add assets to   assets/ folder on your project root
    3.2 Run this command on your terminal : sh scripts/gen_assets.sh
  

5. How to create freezed model ?

    3.1 Type "afm" prefix in your dart file
    3.2 Type your freezed model  auto generate file name (example: user_model.g.dart) and click "Tab" button
    3.3 Tye your model name (example : UserModel)
    3.2 Run this command on your terminal : sh scripts/freezed_build.sh

