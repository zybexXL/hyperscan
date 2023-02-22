md build32
cd build32
del CMakeCache.txt
rd /q /s CMakeFiles
cmake -G "Visual Studio 16 2019" -A Win32 -DCMAKE_BUILD_TYPE=MinSizeRel -DBUILD_SHARED_LIBS=ON .. 
msbuild hs_shared.vcxproj
msbuild hs_runtime_shared.vcxproj
cd ..
