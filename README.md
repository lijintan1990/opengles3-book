OpenGL ES 3.0 Programming Guide
===============================

This repository contains the sample code for the OpenGL ES 3.0 Programming Guide by Addison-Wesley Professional (http://www.opengles-book.com). 

## Platforms ##
The sample code for the OpenGL ES 3.0 Programming Guide currently builds on the following platforms:

* Microsoft Windows 
* Linux X11
* Android 4.3+ NDK (C/C++)
* Android 4.3+ SDK (Java)
* iOS7

Instructions for building for each platform are provided in Chapter 16, "OpenGL ES Platforms".

## Authors ##
Dan Ginsburg<br/>
Budirijanto Purnomo<br/>
Previous contributions: Dave Shreiner, Aaftab Munshi

## Reader Contributions ##
We would like to thank the following people for their contributions to the source code:
* Javed Rabbani Shah for contributing the Android SDK port as well as helping with the NDK port
* Jarkko Vatjus-Anttila for contributing the original Linux/X11 port for the OpenGL ES 2.0 Programming Guide
* Eduardo Pelegri-Llopart and Darryl Gough for contributing the Blackberry Native SDK port for the OpenGL ES 2.0 Programming Guide (we have not yet ported the ES 3.0 book to a Blackberry platform)


编译注意事项：
1. 电脑是64位的，下载64位版本的cmake。
2. 下载64位版本的Mali_OpenGL_ES_Emulator-v3.0.2.g694a9-Windows-64bit.zip
3. 打开cmake-gui.exe，选择电脑上安装的visual studio的版本，选择opengles源码，
	在源码下面新建一个build文件夹保存cmake后的结果。点击configure，会报错误，根据报错修改错误，
	其实就是修改Common/cmakelist里面egl相关lib的名字,用相对路径修改，如下：
set ( common_src Source/esShader.c 
                 Source/esShapes.c
                 Source/esTransform.c
                 Source/esUtil.c )


# Win32 Platform files
if(WIN32)
    set( common_platform_src Source/Win32/esUtil_win32.c )
    add_library( Common STATIC ${common_src} ${common_platform_src} )
    target_link_libraries( Common gles/lib/libGLESv2.lib gles/lib/libEGL.lib )
else()
    find_package(X11)
    find_library(M_LIB m)
    set( common_platform_src Source/LinuxX11/esUtil_X11.c )
    add_library( Common STATIC ${common_src} ${common_platform_src} )
    target_link_libraries( Common gles/lib/libGLESv2.lib gles/lib/libEGL.lib ${X11_LIBRARIES} ${M_LIB} )
endif()

4.再次点击configure不报错，然后点击genarate成功。
5.工程中打开之前我们新建的build文件夹下面的ES3_Book.sln。编译成功，然后把hello_triangle设置为启动
工程，编译会报错找不到gles的库，这里需要修改工程库目录以及导入库文件libGLESv2.lib和libEGL.lib。
6.编译正常后，启动又报错找不到build\Chapter_2\Hello_Triangle\RelWithDebInfo\openglessl
	我们直接把Mali_OpenGL_ES_Emulator-v3.0.2.g694a9-Windows-64bit里面这个文件夹里面相关的东西copy过来就好了。
7.总算正常啦，真不容易。还有需要注意的就是你设置编译的是64位，一定要注意哦，很重要。
