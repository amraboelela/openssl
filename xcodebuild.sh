
#opensslPath=$PWD
OSs=(macos ios ios)
archs=(x86_64 x86_64 arm64)
    
if [ ! -d openssl.xcframework ]; then
    xcodebuild -create-xcframework \
    -framework build/${OSs[0]}-${archs[0]}/openssl.framework \
    -framework build/${OSs[1]}-${archs[1]}/openssl.framework \
    -framework build/${OSs[2]}-${archs[2]}/openssl.framework \
    -output openssl.xcframework
else
    echo directory openssl.xcframework already exists
fi
zip -r openssl.xcframework.zip openssl.xcframework
rm -rf openssl.xcframework

currentDay=$(date "+%y-%m-%d")
mkdir -p ~/archive/openssl
cp -p checksum.txt ~/archive/openssl/checksum-$currentDay.txt
cp -p ../openssl.xcframework.zip ~/archive/openssl/openssl-$currentDay.xcframework.zip

swift package compute-checksum openssl.xcframework.zip > checksum.txt

rm ../openssl.xcframework.zip
mv openssl.xcframework.zip ..
