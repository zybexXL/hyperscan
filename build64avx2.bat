md build64AVX2
cd build64AVX2
del CMakeCache.txt
rd /q /s CMakeFiles
rem CMakeLists.txt patched to enable AVX2 on windows! line 1176 commented out: #if (HAVE_AVX2)
cmake -G "Visual Studio 16 2019" -A x64 -DCMAKE_BUILD_TYPE=MinSizeRel -DBUILD_SHARED_LIBS=ON -DCMAKE_CXX_FLAGS="/arch:AVX2 /W3 /external:W3 /GR /EHsc /D WIN32 /D _WINDOWS" -DCMAKE_C_FLAGS="/arch:AVX2 /W3 /external:W3 /GR /EHsc /D WIN32 /D _WINDOWS" .. 
msbuild hs_shared.vcxproj
msbuild hs_runtime_shared.vcxproj
cd ..
