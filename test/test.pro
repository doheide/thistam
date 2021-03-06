GOOGLETEST_DIR = ../googletest

include(gtest_dependency.pri)


QT += core testlib

TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG += thread
CONFIG += testcase

#CONFIG -= qt

QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage


DEFINES += DO_SIMULATION
DEFINES += "BAHA_TYPE=BAHA_Void"
DEFINES += "BAHA_INCLUDE=baha_base.h"
DEFINES += "SMSYS_TYPE=SMSys"
DEFINES += "SMSYS_INCLUDE=base_test_sys.h"

#DEFINES +=

INCLUDEPATH +=  ../lib/include
DEPENDPATH += $$PWD/../lib/include

include(../lib/lib.pri)

LIBS += -L/usr/lib -lgcov

HEADERS += \
    base_sys/base_test_sys.h \
    test_smsys_compiletime.h \
    test_smsys_sys.h \
    base_sys/base_test_sys_sm.h

SOURCES += \
    main.cpp \
    base_sys/base_test_sys.cpp

RESOURCES += \
    ctt.qrc

