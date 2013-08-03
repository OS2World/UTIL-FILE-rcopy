# -*- mode: makefile -*-
# $Source: e:/source/disks/rcopy/RCS/makefile,v $
# $Revision: 1.2 $
# $Date: 1997/09/28 22:25:23 $
# $Author: vitus $
#
# Makefile for creation of rcopy.exe
#
# $Log: makefile,v $
# Revision 1.2  1997/09/28 22:25:23  vitus
# now uses compiler.mkf
#
# Revision 1.1  1997/01/22 00:40:13  vitus
# Initial revision
# ----------------------------------------
#
DEBUG *= 0
COMPILER = GNUC
.INCLUDE: ../../compiler.mkf

.IF $(DEBUG) == 0
CCFLAGS = $(_CFLAGS) -DNDEBUG
.ELSE
CCFLAGS = $(_CFLAGS)
.ENDIF
CLFLAGS = $(_CFLAGS)


all: rcopy.exe

rcopy.exe : rcopy.$(OBJ) verbose.$(OBJ)
	$(CL2PM) $(CLFLAGS) rcopy.$(OBJ) verbose.$(OBJ)

rcopy.$(OBJ) : rcopy.c ../../tools/verbose.h
	$(CC2) $(CCFLAGS) rcopy.c

verbose.$(OBJ) : ../../tools/verbose.c ../../tools/verbose.h
	$(CC2) $(CCFLAGS) ../../tools/verbose.c
