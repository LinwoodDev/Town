FLUTTER_VERSION=$(grep -oP 'flutter:\s*\K\d+\.\d+\.\d+' pubspec.yaml)
QUOKKA_FLAVOR=$([[ "$QUOKKA_NIGHTLY" == "true" ]] && echo "nightly" || echo "stable")
if [ "$QUOKKA_NIGHTLY" = "true" ]; then cp -r web_nightly/** web; fi && if cd flutter; then git pull && cd ..; else git clone https://github.com/flutter/flutter.git -b $FLUTTER_VERSION; fi && flutter/bin/flutter config --enable-web && cd ../tools && ../app/flutter/bin/dart pub get && cd .. && app/flutter/bin/dart run tools/generate.dart && cd app && flutter/bin/flutter pub get && flutter/bin/dart run build_runner build --delete-conflicting-outputs && flutter/bin/flutter build web --wasm --release --no-web-resources-cdn --dart-define=flavor=$QUOKKA_FLAVOR