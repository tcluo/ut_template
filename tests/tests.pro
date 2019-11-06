QT += testlib
QT -= gui

CONFIG += qt console warn_on depend_includepath testcase
CONFIG -= app_bundle
CONFIG += c++14

TEMPLATE = app

include(../3rdparty/Catch2/catch.pri)
include(../3rdparty/trompeloeil/trompeloeil.pri)

PROJECT_DIR = $$PWD/../app

PROJECT_SOURCES = \
    $$PROJECT_DIR/_1.cpp

PROJECT_HEADERS = \
    $$PROJECT_DIR/_1.h

INCLUDEPATH += $$PROJECT_DIR

SOURCES += \
    main.cpp \
    tst_apptests.cpp \
    $$PROJECT_SOURCES

HEADERS += \
    $$PROJECT_HEADERS
