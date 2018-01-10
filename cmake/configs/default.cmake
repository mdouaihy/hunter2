# Copyright (c) 2013-2017, Ruslan Baratov
# All rights reserved.

# Do not place header guards here

# Unset:
#   * ${PACKAGE_NAME}_ROOT (CMake variable)
#   * ${PACKAGE_NAME}_ROOT (CMake cache variable)
#   * ${PACKAGE_NAME}_ROOT (environment variable)

# Set CMake variables:
#   * HUNTER_${PACKAGE_NAME}_VERSION
#   * HUNTER_${PACKAGE_NAME}_CMAKE_ARGS (optionally)

# Usage:
#   hunter_config(Foo VERSION 1.0.0)
#   hunter_config(Boo VERSION 1.2.3z CMAKE_ARGS BOO_WITH_A=ON)

# Wiki:
#   * https://github.com/ruslo/hunter/wiki/dev.modules#hunter_config

include(hunter_config)
include(hunter_user_error)

# NOTE: no names with spaces!

hunter_config(ARM_NEON_2_x86_SSE VERSION 1.0.0-p0)
hunter_config(AllTheFlopsThreads VERSION 0.1-p0)
hunter_config(Android-Apk VERSION 1.1.14)
hunter_config(Android-Build-Tools VERSION 22.0.1)
hunter_config(Android-Google-Repository VERSION 47)
hunter_config(Android-Modules VERSION 1.0.0)
hunter_config(Android-SDK VERSION 0.0.5)
hunter_config(Android-SDK-Platform-tools VERSION r25.0.5)
hunter_config(Android-SDK-Tools VERSION 25.2.5)
hunter_config(Android-Support-Repository VERSION 47)
hunter_config(AngelScript VERSION 2.30-p0)
hunter_config(ArrayFire VERSION 3.3.1-p0)
hunter_config(Assimp VERSION 3.2-p1)
hunter_config(Async++ VERSION 0.0.3-hunter)
hunter_config(Avahi VERSION 0.6.31)
hunter_config(Beast VERSION 1.0.0-b84-hunter-0)
hunter_config(BZip2 VERSION 1.0.6-p3)
if(MSVC OR MINGW)
  # FIXME: https://ci.appveyor.com/project/ingenue/hunter/build/1.0.2229
  hunter_config(Boost VERSION 1.64.0)
else()
  hunter_config(Boost VERSION 1.66.0)
endif()
hunter_config(BoostCompute VERSION 0.5-p0)
hunter_config(BoostProcess VERSION 0.5)
hunter_config(BoringSSL VERSION 1.0.0)
hunter_config(Box2D VERSION 2.3.1-p0)
hunter_config(CapnProto VERSION 0.6.1)
hunter_config(CLAPACK VERSION 3.2.1)
hunter_config(CURL VERSION 7.49.1-DEV-v9)
hunter_config(Clang VERSION 4.0.1-p0)
hunter_config(ClangToolsExtra VERSION 4.0.1) # Clang
hunter_config(Comet VERSION 4.0.2)
hunter_config(cpr VERSION 1.3.0)
hunter_config(CppNetlib VERSION 0.10.1-hunter-3)
hunter_config(CppNetlibUri VERSION 1.0.4-hunter)
hunter_config(crc32c VERSION 1.0.5)
hunter_config(CsvParserCPlusPlus VERSION 1.0.1)
hunter_config(Eigen VERSION 3.3.4-p1)
hunter_config(state_machine VERSION 1.1)
hunter_config(enet VERSION 1.3.13-p1)
hunter_config(Expat VERSION 2.1.1)
if(MSVC)
  hunter_config(getopt VERSION 1.0.0-p0)
endif()
hunter_config(GPUImage VERSION 0.1.6-p6)
hunter_config(GSL VERSION 2.1.0-p2)
hunter_config(Igloo VERSION 1.1.1-hunter)
hunter_config(intsizeof VERSION 2.0.1)
hunter_config(Jpeg VERSION 9b-p3)
hunter_config(JsonSpirit VERSION 0.0.4-hunter)
if(MSVC_VERSION LESS 1600)
    # for VS10 - version without support C++11
  hunter_config(jsoncpp VERSION 0.7.0)
else()
  hunter_config(jsoncpp VERSION 1.8.0)
endif()
hunter_config(LAPACK VERSION 3.7.1)
hunter_config(LLVM VERSION 4.0.1-p0) # Clang
hunter_config(LLVMCompilerRT VERSION 4.0.1-patched) # Clang
hunter_config(Leathers VERSION 0.1.6)
hunter_config(Leptonica VERSION 1.74.2-p4)
hunter_config(LibCDS VERSION 2.3.1)
hunter_config(Libcxx VERSION 3.6.2) # Clang
hunter_config(Libcxxabi VERSION 3.6.2) # Clang
hunter_config(Libevent VERSION 2.1.8-p3)
hunter_config(libffi VERSION 3.2.1)
hunter_config(librtmp VERSION 2.4.0-p0)
hunter_config(Libssh2 VERSION 1.7.0)
hunter_config(Lua VERSION 5.3.2-p2)
hunter_config(MySQL-client VERSION 6.1.9-p0)
hunter_config(NASM VERSION 2.12.02)
hunter_config(OpenAL VERSION 1.18.2)
hunter_config(OpenBLAS VERSION 0.2.20-p0)
hunter_config(OpenCL VERSION 2.1-p3)
hunter_config(OpenCL-cpp VERSION 2.0.10-p0)
hunter_config(OpenCV VERSION 3.3.1-p1)
hunter_config(OpenCV-Extra VERSION 3.3.1)
hunter_config(OpenNMTTokenizer VERSION 0.2.0-p1)
hunter_config(OpenSSL VERSION 1.1.0g)
hunter_config(PNG VERSION 1.6.26-p1)
hunter_config(PocoCpp VERSION 1.7.9-p1)
hunter_config(PostgreSQL VERSION 10.0.0)
hunter_config(Protobuf VERSION 3.3.0)

string(COMPARE EQUAL "${CMAKE_SYSTEM_NAME}" "Linux" _is_linux)
if(_is_linux OR MINGW)
  # qt-qml example is broken on Linux
  # qt-core example is broken on MinGW
  hunter_config(Qt VERSION 5.5.1-cvpixelbuffer-2-p9)
else()
  hunter_config(Qt VERSION 5.9.1-p0)
endif()

hunter_config(QtAndroidCMake VERSION 1.0.9)
hunter_config(QtCMakeExtra VERSION 1.0.28)
hunter_config(QtQmlManager VERSION 1.0.0)
hunter_config(RapidJSON VERSION 1.1.0)
hunter_config(RapidXML VERSION 1.13)
hunter_config(rocksdb VERSION 5.8.6)
hunter_config(SDL2 VERSION 2.0.7-p1)
hunter_config(SDL_image VERSION 2.0.1-p1)
hunter_config(SDL_mixer VERSION 2.0.2-p0)
hunter_config(SDL_ttf VERSION 2.0.14-p0)
hunter_config(sds VERSION 2.0.0)
hunter_config(sqlite3 VERSION 3.21.0-p2)
hunter_config(Sober VERSION 0.1.3)
hunter_config(stormlib VERSION 9.21-p1)
hunter_config(Sugar VERSION 1.2.2)
hunter_config(SuiteSparse VERSION 4.5.1-p1)
hunter_config(TIFF VERSION 4.0.2-p3)
hunter_config(toluapp VERSION 1.0.93-p1)
hunter_config(tomcrypt VERSION 1.17-p3)
hunter_config(tommath VERSION 1.0-p2)
hunter_config(Urho3D VERSION 1.7-p13)
hunter_config(WTL VERSION 9.1.5321)
hunter_config(WDC VERSION 1.1.1)
hunter_config(Washer VERSION 0.1.2)
hunter_config(WinSparkle VERSION 0.4.0)
hunter_config(ZLIB VERSION 1.2.8-p3)
hunter_config(ZMQPP VERSION 4.1.2)
hunter_config(ZeroMQ VERSION 4.2.3-p1)
hunter_config(caffe VERSION rc3-p2)
hunter_config(acf VERSION 0.0.1)
hunter_config(Catch VERSION 2.0.1)
hunter_config(aes VERSION 0.0.1-p1)
hunter_config(aglet VERSION 1.2.0)
hunter_config(autobahn-cpp VERSION 0.2.0)
hunter_config(autoutils VERSION 0.3.0)
hunter_config(benchmark VERSION 1.3.0)
hunter_config(bison VERSION 3.0.4-p0)
hunter_config(boost-pba VERSION 1.0.0-p0)
hunter_config(bullet VERSION 2.87-p0)
hunter_config(c-ares VERSION 1.13.0)
hunter_config(ccv VERSION 0.7-p6)
hunter_config(cereal VERSION 1.2.2-p0)
hunter_config(ceres-solver VERSION 1.12.0-p2)
hunter_config(civetweb VERSION 1.10-p1)
hunter_config(clBLAS VERSION 2.10.0-p0)
hunter_config(convertutf VERSION 1.0.1)
hunter_config(crashpad VERSION v0.0.1-p0)
hunter_config(crashup VERSION 0.0.2)
hunter_config(cryptopp VERSION 5.6.5-p0)
hunter_config(cub VERSION 1.7.4-p0)
hunter_config(cvmatio VERSION 1.0.28)
hunter_config(cxxopts VERSION 1.0.0-p0)
hunter_config(czmq VERSION 4.0.2-p1)
hunter_config(damageproto VERSION 1.2.1)
hunter_config(dbus VERSION 1.10.0-hunter-4)
hunter_config(debug_assert VERSION 1.3)
hunter_config(dest VERSION 0.8.0-p4)
hunter_config(dlib VERSION 19.8-p0)
hunter_config(dmlc-core VERSION 0.0.0-p1)
hunter_config(doctest VERSION 1.2.0)
hunter_config(double-conversion VERSION 3.0.0)
hunter_config(dri2proto VERSION 2.8)
hunter_config(dri3proto VERSION 1.0)
hunter_config(drishti VERSION 0.8.6)
hunter_config(drishti_assets VERSION 1.8)
hunter_config(drishti_faces VERSION 1.2)
hunter_config(drm VERSION 2.4.67)
hunter_config(eigen3-nnls VERSION 1.0.1)
hunter_config(eos VERSION 0.12.1)
hunter_config(FakeIt VERSION 2.0.3)
hunter_config(fft2d VERSION 1.0.0-p0)
hunter_config(farmhash VERSION 1.1)
hunter_config(fixesproto VERSION 5.0)
hunter_config(flatbuffers VERSION 1.8.0-p1)
hunter_config(flex VERSION 2.6.4)
hunter_config(fmt VERSION 4.0.0)
hunter_config(freetype VERSION 2.6.2)
hunter_config(gauze VERSION 0.3.1)
hunter_config(gemmlowp VERSION 1.0.0)
hunter_config(geos VERSION 3.4.2)
hunter_config(giflib VERSION 5.1.4-p0)
hunter_config(gflags VERSION 2.2.1)
hunter_config(glbinding VERSION 2.1.3-p0)
hunter_config(glew VERSION 2.0.0-p1)
hunter_config(glfw VERSION 3.3.0-p4)
hunter_config(glib VERSION 2.54.0)
hunter_config(glm VERSION 0.9.8.5)
hunter_config(globjects VERSION 1.1.0-p0)
hunter_config(glog VERSION 0.3.5-p1)
hunter_config(glproto VERSION 1.4.17)
hunter_config(gRPC VERSION 1.8.1)
hunter_config(gst_plugins_bad VERSION 1.10.4)
hunter_config(gst_plugins_base VERSION 1.10.4)
hunter_config(gst_plugins_good VERSION 1.10.4)
hunter_config(gst_plugins_ugly VERSION 1.10.4)
hunter_config(gstreamer VERSION 1.10.4)
hunter_config(gumbo VERSION 0.10.1)
hunter_config(half VERSION 1.1.0-p1)
hunter_config(hdf5 VERSION 1.8.15-p1)
hunter_config(highwayhash VERSION 0.0.0)
hunter_config(ice VERSION 1.0.8)
hunter_config(imshow VERSION 1.0.0-p0)
hunter_config(inja VERSION 0.1.1)
hunter_config(inputproto VERSION 2.2)
hunter_config(intltool VERSION 0.51.0)
hunter_config(ios_sim VERSION 3.1.1)
hunter_config(ippicv VERSION 20151201)
hunter_config(irrXML VERSION 1.2)
hunter_config(jo_jpeg VERSION 0.0.1)
hunter_config(kbproto VERSION 1.0.6)
hunter_config(kNet VERSION 2.7-p1)
hunter_config(leveldb VERSION 1.20)
hunter_config(libcpuid VERSION 0.4.0)
hunter_config(libdaemon VERSION 0.14)
hunter_config(libdill VERSION 1.6)
hunter_config(libjson-rpc-cpp VERSION 0.7.0-p3)
hunter_config(libmill VERSION 1.18)
hunter_config(libogg VERSION 1.3.2-cmake3)
hunter_config(libsodium VERSION 1.0.10)
hunter_config(libuv VERSION 1.14.0-p1)
hunter_config(libxml2 VERSION 2.9.7)
hunter_config(libyuv VERSION 1514-p3)
hunter_config(lmdb VERSION 0.9.21-p2)
hunter_config(lmdbxx VERSION 0.9.14.0)
hunter_config(log4cplus VERSION 1.2.0-p0)
hunter_config(lz4 VERSION 1.8.0-p2)
hunter_config(lzma VERSION 5.2.3-p4)
hunter_config(md5 VERSION 1.6)
hunter_config(mini_chromium VERSION 0.0.1-p2)
hunter_config(minizip VERSION 1.0.1-p1)
hunter_config(mojoshader VERSION 0.0.1)
hunter_config(mongoose VERSION 6.10)
hunter_config(mpark_variant VERSION 1.0.0)
hunter_config(msgpack VERSION 1.4.1-p2)
hunter_config(mtplz VERSION 0.1-p3)
hunter_config(nanoflann VERSION 1.2.3-p0)
hunter_config(nlohmann_json VERSION 3.0.1)
hunter_config(nsync VERSION 1.14-p1)
hunter_config(odb VERSION 2.4.0)
hunter_config(odb-boost VERSION 2.4.0)
hunter_config(odb-compiler VERSION 2.4.0)
hunter_config(odb-mysql VERSION 2.4.0)
hunter_config(odb-pgsql VERSION 2.4.0)
hunter_config(odb-sqlite VERSION 2.4.0)
hunter_config(ogles_gpgpu VERSION 0.2.7)
hunter_config(onmt VERSION 0.4.1-p2)
hunter_config(openddlparser VERSION 0.1.0-p2)
hunter_config(opentracing-cpp VERSION 1.1.0)
hunter_config(pciaccess VERSION 0.13.4)
hunter_config(libpcre VERSION 8.41)
hunter_config(poly2tri VERSION 1.0.0)
hunter_config(polyclipping VERSION 4.8.8-p0) # for Assimp
hunter_config(presentproto VERSION 1.0)
hunter_config(pthread-stubs VERSION 0.3)
hunter_config(pugixml VERSION 1.8.1)
hunter_config(pybind11 VERSION 2.2.1)
hunter_config(rabit VERSION 0.0.0-p2)
hunter_config(rabbitmq-c VERSION 0.7.0-p1)
hunter_config(randrproto VERSION 1.3.2)
if(MSVC)
	hunter_config(range-v3 VERSION vcpkg5-p)
else()
	hunter_config(range-v3 VERSION 0.3.0-p)
endif()
hunter_config(re2 VERSION 2017.11.01-p0)
hunter_config(recastnavigation VERSION 1.4-p0)
hunter_config(renderproto VERSION 0.11.1)
hunter_config(sm VERSION 1.2.1)
hunter_config(Snappy VERSION 1.1.6-p0)
hunter_config(sse2neon VERSION 1.0.0-p0)
hunter_config(sparsehash VERSION 2.0.2)
hunter_config(stanhull VERSION 0.0.1)
if(MSVC_VERSION LESS 1800)
    # for VS12 - version without support C++11
  hunter_config(spdlog VERSION 1.0.0-p0)
else()
  hunter_config(spdlog VERSION 0.13.0-p1)
endif()
hunter_config(stb VERSION 0.0.1)
hunter_config(szip VERSION 2.1.0-p1)
hunter_config(Tesseract VERSION 3.05.01-hunter-3)
hunter_config(thread-pool-cpp VERSION 1.1.0)
hunter_config(thrift VERSION 0.10.0-p2)
hunter_config(tinydir VERSION 1.2-p0)
hunter_config(type_safe VERSION 0.1)
hunter_config(util_linux VERSION 2.30.1)
hunter_config(websocketpp VERSION 0.7.0-p2)
hunter_config(wxWidgets VERSION 3.0.2)
hunter_config(x11 VERSION 1.5.0)
hunter_config(x264 VERSION snapshot-20170420-2245)
hunter_config(xau VERSION 1.0.7)
hunter_config(xcb VERSION 1.11.1)
hunter_config(xcb-proto VERSION 1.11)
hunter_config(xcursor VERSION 1.1.13)
hunter_config(xdamage VERSION 1.1.4)
hunter_config(xext VERSION 1.3.1)
hunter_config(xextproto VERSION 7.2.1)
hunter_config(xf86vidmodeproto VERSION 2.3.1)
hunter_config(xfixes VERSION 5.0.1)
hunter_config(xgboost VERSION 0.7.0-p4)
hunter_config(xi VERSION 1.6.1)
hunter_config(xinerama VERSION 1.1.2)
hunter_config(xineramaproto VERSION 1.1.2)
hunter_config(xorg-macros VERSION 1.17)
hunter_config(xproto VERSION 7.0.23)
hunter_config(xrandr VERSION 1.3.2)
hunter_config(xrender VERSION 0.9.7)
hunter_config(xshmfence VERSION 1.2)
hunter_config(xtrans VERSION 1.2.7)
hunter_config(xxf86vm VERSION 1.1.2)
hunter_config(yaml-cpp VERSION 0.5.3-plus-p0)

if(MSVC80)
  hunter_config(GTest VERSION 1.7.0-hunter-6)
else()
  hunter_config(GTest VERSION 1.8.0-hunter-p11)
endif()

if(ANDROID)
  string(COMPARE EQUAL "${CMAKE_SYSTEM_VERSION}" "" _is_empty)
  if(_is_empty)
    hunter_user_error("CMAKE_SYSTEM_VERSION is empty")
  endif()

  string(COMPARE EQUAL "${CMAKE_SYSTEM_VERSION}" "24" _is_api_24)
  string(COMPARE EQUAL "${CMAKE_SYSTEM_VERSION}" "21" _is_api_21)
  string(COMPARE EQUAL "${CMAKE_SYSTEM_VERSION}" "19" _is_api_19)
  string(COMPARE EQUAL "${CMAKE_SYSTEM_VERSION}" "16" _is_api_16)

  if(_is_api_21)
    hunter_config(Android-Google-APIs VERSION 21_r01)
    hunter_config(Android-Google-APIs-Intel-x86-Atom-System-Image VERSION 21_r10)
    hunter_config(Android-Intel-x86-Atom-System-Image VERSION 21)
    hunter_config(Android-SDK-Platform VERSION 21_r02)
    hunter_config(Sources-for-Android-SDK VERSION 21)
    hunter_config(Android-ARM-EABI-v7a-System-Image VERSION 21_r04)
  elseif(_is_api_19)
    hunter_config(Android-Google-APIs VERSION 19_r18)
    hunter_config(Android-Intel-x86-Atom-System-Image VERSION 19)
    hunter_config(Android-SDK-Platform VERSION 19_r04)
    hunter_config(Sources-for-Android-SDK VERSION 19)
    hunter_config(Android-ARM-EABI-v7a-System-Image VERSION 19_r05)
  elseif(_is_api_16)
    hunter_config(Android-Google-APIs VERSION 16_r04)
    hunter_config(Android-Intel-x86-Atom-System-Image VERSION 16)
    hunter_config(Android-SDK-Platform VERSION 16_r05)
    hunter_config(Sources-for-Android-SDK VERSION 16)
    hunter_config(Android-ARM-EABI-v7a-System-Image VERSION 16_r04)
  elseif(_is_api_24)
    hunter_config(Android-Google-APIs VERSION 24_r1)
    hunter_config(Android-Google-APIs-Intel-x86-Atom-System-Image VERSION 24_r20)
    hunter_config(Android-Intel-x86-Atom-System-Image VERSION 24_r08)
    hunter_config(Android-SDK-Platform VERSION 24_r02)
    hunter_config(Sources-for-Android-SDK VERSION 24)
    hunter_config(Android-ARM-EABI-v7a-System-Image VERSION 24_r07)
  else()
    hunter_user_error(
        "Android API (CMAKE_SYSTEM_VERSION)"
        " Expected: `24`, `21`, `19`, `16`"
        " Got: `${CMAKE_SYSTEM_VERSION}`"
    )
  endif()
endif()

hunter_config(zookeeper VERSION 3.4.9-p2)
hunter_config(tacopie VERSION 2.4.0-h1)
hunter_config(cpp_redis VERSION 3.5.0-h1)
hunter_config(IF97 VERSION 2.1.2)
