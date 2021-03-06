######################################################################
# Automatically generated by qmake (3.0) Tue Sep 20 23:27:49 2016
######################################################################
QT  +=  core gui opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = PCLIO_PLUGIN
TEMPLATE = lib
INCLUDEPATH +=  .

# Input
HEADERS +=  PcdFilter.h \
            qPclIO.h

SOURCES += PcdFilter.cpp qPclIO.cpp

#qCC_io
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../Release/libs/ -lQCC_IO_LIB
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../Release/libs/ -lQCC_IO_LIB
else:unix: LIBS += -L$$PWD/../../../../Release/libs/ -lQCC_IO_LIB

INCLUDEPATH += $$PWD/../../../libs/qCC_io
DEPENDPATH += $$PWD/../../../libs/qCC_io

#qCC_db
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../Release/libs/ -lQCC_DB_LIB
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../Release/libs/ -lQCC_DB_LIB
else:unix: LIBS += -L$$PWD/../../../../Release/libs/ -lQCC_DB_LIB

INCLUDEPATH += $$PWD/../../../libs/qCC_db
DEPENDPATH += $$PWD/../../../libs/qCC_db

#CC
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../Release/libs/ -lCC_CORE_LIB
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../Release/libs/ -lCC_CORE_LIB
else:unix: LIBS += -L$$PWD/../../../../Release/libs/ -lCC_CORE_LIB

INCLUDEPATH += $$PWD/../../../CC/include
DEPENDPATH += $$PWD/../../../CC

#PclUtils
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../Release/libs/ -lPCLUTILS
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../Release/libs/ -lPCLUTILS
else:unix: LIBS += -L$$PWD/../../../../Release/libs/ -lPCLUTILS

INCLUDEPATH += $$PWD/../PclUtils/utils
DEPENDPATH += $$PWD/../PclUtils/utils

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../../Release/libs/libPCLUTILS.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../../Release/libs/libPCLUTILS.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../../Release/libs/PCLUTILS.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../../Release/libs/PCLUTILS.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../../../Release/libs/libPCLUTILS.a

macx
{

# 编译时候指定libs查找位置
QMAKE_LFLAGS_RELEASE += -Wl,-rpath,$$PWD/../../../../Release/libs -Wl
QMAKE_LFLAGS_DEBUG += -Wl,-rpath,$$PWD/../../../../Release/libs -Wl

#指定生成路径
DESTDIR = $$PWD/../../../../Release/CloudCompare.app/Contents/plugins

#boost
INCLUDEPATH +=  /usr/local/Cellar/boost/1.62.0/include

LIBS    +=  -L$$PWD/../../../../../../../../usr/local/Cellar/boost/1.62.0/lib/ -lboost_system \
            -L$$PWD/../../../../../../../../usr/local/Cellar/boost/1.62.0/lib/ -lboost_thread-mt

#eigen
INCLUDEPATH +=  /usr/local/Cellar/eigen/3.3.3/include/eigen3

#flann
#INCLUDEPATH +=  /usr/local/Cellar/flann/1.9.1_1/include

#PCL
INCLUDEPATH +=  /usr/local/include/pcl-1.8
INCLUDEPATH += /usr/local/include/

LIBS    +=  -L$$PWD/../../../../../../../../usr/local/Cellar/pcl/1.8.0_7/lib/ -lpcl_apps \
            -L$$PWD/../../../../../../../../usr/local/Cellar/pcl/1.8.0_7/lib/ -lpcl_common \
            -L$$PWD/../../../../../../../../usr/local/Cellar/pcl/1.8.0_7/lib/ -lpcl_filters \
            -L$$PWD/../../../../../../../../usr/local/Cellar/pcl/1.8.0_7/lib/ -lpcl_keypoints \
            -L$$PWD/../../../../../../../../usr/local/Cellar/pcl/1.8.0_7/lib/ -lpcl_kdtree \
            -L$$PWD/../../../../../../../../usr/local/Cellar/pcl/1.8.0_7/lib/ -lpcl_search \
            -L$$PWD/../../../../../../../../usr/local/Cellar/pcl/1.8.0_7/lib/ -lpcl_features \
            -L$$PWD/../../../../../../../../usr/local/Cellar/pcl/1.8.0_7/lib/ -lpcl_io \
            -L$$PWD/../../../../../../../../usr/local/Cellar/pcl/1.8.0_7/lib/ -lpcl_io_ply \
            -L$$PWD/../../../../../../../../usr/local/Cellar/pcl/1.8.0_7/lib/ -lpcl_visualization

}

unix:!macx{
# linux only

# 编译时候指定libs查找位置
QMAKE_LFLAGS_RELEASE += -Wl,-rpath=$$PWD/../../../../Release/libs -Wl,-Bsymbolic
QMAKE_LFLAGS_DEBUG += -Wl,-rpath=$$PWD/../../../../Release/libs -Wl,-Bsymbolic

#指定生成路径
DESTDIR = $$PWD/../../../../Release/plugins

# lib
LIBS += -lpcl_apps \
        -lpcl_common \
        -lpcl_filters \
        -lpcl_keypoints \
        -lpcl_kdtree \
        -lpcl_search \
        -lpcl_surface \
        -lpcl_features \
        -lpcl_io \
        -lpcl_io_ply \
        -lpcl_visualization

#boost
INCLUDEPATH +=  /usr/include/boost

#eigen
INCLUDEPATH +=  /usr/include/eigen3

#flann
INCLUDEPATH +=  /usr/include/flann

#PCL
INCLUDEPATH +=  /usr/include/pcl-1.7
INCLUDEPATH += /usr/include/
}

win32 {
# windows only

}
