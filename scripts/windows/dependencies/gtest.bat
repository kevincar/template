
CD ./tests

IF NOT EXIST "./googletest-release-1.10.0.zip" (
	curl -L https://github.com/google/googletest/archive/release-1.10.0.zip > ./googletest-release-1.10.0.zip
)

REM unzip
IF NOT EXIST "./gtest/" (
	unzip googletest-release-1.10.0.zip -d gtest
)

CD ./gtest/googltest-release-1.10.0/

MKDIR build
CD ./build
cmake ..
cmake --build . --config Release
