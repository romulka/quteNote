#############################################################################
# Makefile for building: quteNote
# Generated by qmake (2.01a) (Qt 4.5.1) on: ?? ????. 5 23:17:46 2009
# Project:  quteNote.pro
# Template: app
# Command: /home/roman/builds/libs/qt4sdk/qt/bin/qmake -spec ../../../builds/libs/qt4sdk/qt/mkspecs/linux-g++-64 -unix CONFIG+=debug -o Makefile quteNote.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_XML_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I../../../builds/libs/qt4sdk/qt/mkspecs/linux-g++-64 -I. -I../../../builds/libs/qt4sdk/qt/include/QtCore -I../../../builds/libs/qt4sdk/qt/include/QtGui -I../../../builds/libs/qt4sdk/qt/include/QtXml -I../../../builds/libs/qt4sdk/qt/include -I. -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-rpath,/home/roman/builds/libs/qt4sdk/qt/lib
LIBS          = $(SUBLIBS)  -L/home/roman/builds/libs/qt4sdk/qt/lib -lQtXml -L/home/roman/builds/libs/qt4sdk/qt/lib -pthread -pthread -lQtGui -L/usr/X11R6/lib64 -pthread -lfreetype -lgobject-2.0 -lSM -lICE -pthread -pthread -lXrender -lfontconfig -lXext -lX11 -lQtCore -lm -pthread -lgthread-2.0 -lrt -lglib-2.0 -ldl -lpthread
AR            = ar cqs
RANLIB        = 
QMAKE         = /home/roman/builds/libs/qt4sdk/qt/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -sf
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		mainwindow.cpp \
		qutenote.cpp moc_mainwindow.cpp
OBJECTS       = main.o \
		mainwindow.o \
		qutenote.o \
		moc_mainwindow.o
DIST          = ../../../builds/libs/qt4sdk/qt/mkspecs/common/g++.conf \
		../../../builds/libs/qt4sdk/qt/mkspecs/common/unix.conf \
		../../../builds/libs/qt4sdk/qt/mkspecs/common/linux.conf \
		../../../builds/libs/qt4sdk/qt/mkspecs/qconfig.pri \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/qt_functions.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/qt_config.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/exclusive_builds.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/default_pre.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/debug.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/default_post.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/warn_on.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/qt.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/unix/thread.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/moc.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/resources.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/uic.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/yacc.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/lex.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/include_source_dir.prf \
		quteNote.pro
QMAKE_TARGET  = quteNote
DESTDIR       = 
TARGET        = quteNote

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: quteNote.pro  ../../../builds/libs/qt4sdk/qt/mkspecs/linux-g++-64/qmake.conf ../../../builds/libs/qt4sdk/qt/mkspecs/common/g++.conf \
		../../../builds/libs/qt4sdk/qt/mkspecs/common/unix.conf \
		../../../builds/libs/qt4sdk/qt/mkspecs/common/linux.conf \
		../../../builds/libs/qt4sdk/qt/mkspecs/qconfig.pri \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/qt_functions.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/qt_config.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/exclusive_builds.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/default_pre.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/debug.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/default_post.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/warn_on.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/qt.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/unix/thread.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/moc.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/resources.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/uic.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/yacc.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/lex.prf \
		../../../builds/libs/qt4sdk/qt/mkspecs/features/include_source_dir.prf \
		/home/roman/builds/libs/qt4sdk/qt/lib/libQtXml.prl \
		/home/roman/builds/libs/qt4sdk/qt/lib/libQtCore.prl \
		/home/roman/builds/libs/qt4sdk/qt/lib/libQtGui.prl
	$(QMAKE) -spec ../../../builds/libs/qt4sdk/qt/mkspecs/linux-g++-64 -unix CONFIG+=debug -o Makefile quteNote.pro
../../../builds/libs/qt4sdk/qt/mkspecs/common/g++.conf:
../../../builds/libs/qt4sdk/qt/mkspecs/common/unix.conf:
../../../builds/libs/qt4sdk/qt/mkspecs/common/linux.conf:
../../../builds/libs/qt4sdk/qt/mkspecs/qconfig.pri:
../../../builds/libs/qt4sdk/qt/mkspecs/features/qt_functions.prf:
../../../builds/libs/qt4sdk/qt/mkspecs/features/qt_config.prf:
../../../builds/libs/qt4sdk/qt/mkspecs/features/exclusive_builds.prf:
../../../builds/libs/qt4sdk/qt/mkspecs/features/default_pre.prf:
../../../builds/libs/qt4sdk/qt/mkspecs/features/debug.prf:
../../../builds/libs/qt4sdk/qt/mkspecs/features/default_post.prf:
../../../builds/libs/qt4sdk/qt/mkspecs/features/warn_on.prf:
../../../builds/libs/qt4sdk/qt/mkspecs/features/qt.prf:
../../../builds/libs/qt4sdk/qt/mkspecs/features/unix/thread.prf:
../../../builds/libs/qt4sdk/qt/mkspecs/features/moc.prf:
../../../builds/libs/qt4sdk/qt/mkspecs/features/resources.prf:
../../../builds/libs/qt4sdk/qt/mkspecs/features/uic.prf:
../../../builds/libs/qt4sdk/qt/mkspecs/features/yacc.prf:
../../../builds/libs/qt4sdk/qt/mkspecs/features/lex.prf:
../../../builds/libs/qt4sdk/qt/mkspecs/features/include_source_dir.prf:
/home/roman/builds/libs/qt4sdk/qt/lib/libQtXml.prl:
/home/roman/builds/libs/qt4sdk/qt/lib/libQtCore.prl:
/home/roman/builds/libs/qt4sdk/qt/lib/libQtGui.prl:
qmake:  FORCE
	@$(QMAKE) -spec ../../../builds/libs/qt4sdk/qt/mkspecs/linux-g++-64 -unix CONFIG+=debug -o Makefile quteNote.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/quteNote1.0.0 || $(MKDIR) .tmp/quteNote1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/quteNote1.0.0/ && $(COPY_FILE) --parents mainwindow.h qutenote.h .tmp/quteNote1.0.0/ && $(COPY_FILE) --parents main.cpp mainwindow.cpp qutenote.cpp .tmp/quteNote1.0.0/ && $(COPY_FILE) --parents mainwindow.ui .tmp/quteNote1.0.0/ && (cd `dirname .tmp/quteNote1.0.0` && $(TAR) quteNote1.0.0.tar quteNote1.0.0 && $(COMPRESS) quteNote1.0.0.tar) && $(MOVE) `dirname .tmp/quteNote1.0.0`/quteNote1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/quteNote1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_mainwindow.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp
moc_mainwindow.cpp: mainwindow.h
	/home/roman/builds/libs/qt4sdk/qt/bin/moc $(DEFINES) $(INCPATH) mainwindow.h -o moc_mainwindow.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h
ui_mainwindow.h: mainwindow.ui
	/home/roman/builds/libs/qt4sdk/qt/bin/uic mainwindow.ui -o ui_mainwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

main.o: main.cpp mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		ui_mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

qutenote.o: qutenote.cpp qutenote.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qutenote.o qutenote.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:
