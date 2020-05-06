#! /usr/bin/env sh

cd ./tests

# Download GTest
if [ ! -f googletest-release-1.10.0.zip ] ; then
	curl -L https://github.com/google/googletest/archive/release-1.10.0.zip > ./googletest-release-1.10.0.zip
fi

# unzip
if [ ! -d ./gtest ] ; then
	unzip googletest-release-1.10.0.zip -d gtest
fi

cd ./gtest/googletest-release-1.10.0/

mkdir build
cd ./build
cmake ..
make
