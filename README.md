# openssl

openssl, Swift Package Manager package for iOS and macOS. Complete solution to openssl library on iOS and macOS. Package came with precompiled libraries, and include script to build newer version if necessary.

## Generating xcframework
Follow the following steps:

            ~ $ cd resources
    resources $ git clone https://github.com/krzyzanowskim/OpenSSL OpenSSL-krzyzanowskim

Copy frameworks to build folder

    resources $ cd openssl
        openssl $ ./xcodebuild.sh
        openssl $ ls

You should see the generated checksum.txt

    openssl $ ls ..

You should see the generated openssl.xcframework.zip

## Swift Package Manager

    dependencies: [
        .package(url: "https://github.com/amraboelela/openssl", .branch("master")),
    ]
