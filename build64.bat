md build64
cd build64
del CMakeCache.txt
rd /q /s CMakeFiles
cmake -G "Visual Studio 16 2019" -A x64 -DCMAKE_BUILD_TYPE=MinSizeRel -DBUILD_SHARED_LIBS=ON .. 
msbuild hs_shared.vcxproj
msbuild hs_runtime_shared.vcxproj
cd ..
