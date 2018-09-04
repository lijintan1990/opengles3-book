# Install script for directory: D:/statics/opengles3.0/opengles3-book

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/ES3_Book")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("D:/statics/opengles3.0/opengles3-book/build/Common/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_2/Hello_Triangle/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_6/Example_6_3/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_6/Example_6_6/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_6/MapBuffers/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_6/VertexArrayObjects/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_6/VertexBufferObjects/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_7/Instancing/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_8/Simple_VertexShader/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_9/Simple_Texture2D/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_9/Simple_TextureCubemap/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_9/MipMap2D/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_9/TextureWrap/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_10/MultiTexture/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_11/MRTs/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_14/Noise3D/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_14/ParticleSystem/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_14/ParticleSystemTransformFeedback/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_14/Shadows/cmake_install.cmake")
  include("D:/statics/opengles3.0/opengles3-book/build/Chapter_14/TerrainRendering/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "D:/statics/opengles3.0/opengles3-book/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
