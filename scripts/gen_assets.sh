#!/bin/bash
set -e


dart run build_runner build
flutter gen-l10n
