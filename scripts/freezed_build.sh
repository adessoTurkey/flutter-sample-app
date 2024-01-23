#!/bin/bash
cd ..

flutter clean
flutter pub get

dart run build_runner build --delete-conflicting-outputs
