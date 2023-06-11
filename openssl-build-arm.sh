#change this accordingly
export ANDROID_NDK_HOME="/path/to/android-ndk-rcxx/"

export HOST_TAG="linux-x86_64"
export TOOLCHAIN="$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/$HOST_TAG/"
PATH=$TOOLCHAIN/bin/:$PATH


wget https://github.com/openssl/openssl/releases/download/OpenSSL_1_1_1t/openssl-1.1.1t.tar.gz
tar -xvf openssl-1.1.1t.tar.gz
cd openssl-1.1.1t

	./Configure android-arm no-shared --prefix=$PWD/build/arm
	make
	make install
	echo "Built inside ./openssl-1.1.1t/build/arm/"

cd ../
