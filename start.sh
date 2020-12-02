docker run --rm -it -w /app -v "$(pwd)":/app -v ~/.cocoapods/repos:/home/cocoa/.cocoapods/repos -v ~/Library/Caches/CocoaPods:/home/cocoa/Library/Cache/CocoaPods cocoapods:1.9.3 pod install

docker run --rm -w /app -v "$(pwd)":/app cocoapods:1.9.3 pod install

docker run --rm -it cocoapods:1.9.3 sh

docker run --rm -it -v ~/.cocoapods/repos:/home/cocoa/.cocoapods/repos cocoapods:1.9.3 sh
