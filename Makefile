
######################################################################
#  Makefile - command file for make to create CBFlib                 #
#                                                                    #
# Version 0.9.6 19 May 2020                                          #
#                                                                    #
#                          Paul Ellis and                            #
#         Herbert J. Bernstein (yaya@bernstein-plus-sons.com)        #
#                                                                    #
# (C) Copyright 2006 - 2020 Herbert J. Bernstein                     #
#                                                                    #
######################################################################

######################################################################
#                                                                    #
# YOU MAY REDISTRIBUTE THE CBFLIB PACKAGE UNDER THE TERMS OF THE GPL #
#                                                                    #
# ALTERNATIVELY YOU MAY REDISTRIBUTE THE CBFLIB API UNDER THE TERMS  #
# OF THE LGPL                                                        #
#                                                                    #
######################################################################

########################### GPL NOTICES ##############################
#                                                                    #
# This program is free software; you can redistribute it and/or      #
# modify it under the terms of the GNU General Public License as     #
# published by the Free Software Foundation; either version 2 of     #
# (the License, or (at your option) any later version.               #
#                                                                    #
# This program is distributed in the hope that it will be useful,    #
# but WITHOUT ANY WARRANTY; without even the implied warranty of     #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the      #
# GNU General Public License for more details.                       #
#                                                                    #
# You should have received a copy of the GNU General Public License  #
# along with this program; if not, write to the Free Software        #
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA           #
# 02111-1307  USA                                                    #
#                                                                    #
######################################################################

######################### LGPL NOTICES ###############################
#                                                                    #
# This library is free software; you can redistribute it and/or      #
# modify it under the terms of the GNU Lesser General Public         #
# License as published by the Free Software Foundation; either       #
# version 2.1 of the License, or (at your option) any later version. #
#                                                                    #
# This library is distributed in the hope that it will be useful,    #
# but WITHOUT ANY WARRANTY; without even the implied warranty of     #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU  #
# Lesser General Public License for more details.                    #
#                                                                    #
# You should have received a copy of the GNU Lesser General Public   #
# License along with this library; if not, write to the Free         #
# Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,    #
# MA  02110-1301  USA                                                #
#                                                                    #
######################################################################

######################################################################
#                                                                    #
#                    Stanford University Notices                     #
#  for the CBFlib software package that incorporates SLAC software   #
#                 on which copyright is disclaimed                   #
#                                                                    #
# This software                                                      #
# -------------                                                      #
# The term "this software", as used in these Notices, refers to      #
# those portions of the software package CBFlib that were created by #
# employees of the Stanford Linear Accelerator Center, Stanford      #
# University.                                                        #
#                                                                    #
# Stanford disclaimer of copyright                                   #
# --------------------------------                                   #
# Stanford University, owner of the copyright, hereby disclaims its  #
# copyright and all other rights in this software.  Hence, anyone    #
# may freely use it for any purpose without restriction.             #
#                                                                    #
# Acknowledgement of sponsorship                                     #
# ------------------------------                                     #
# This software was produced by the Stanford Linear Accelerator      #
# Center, Stanford University, under Contract DE-AC03-76SFO0515 with #
# the Department of Energy.                                          #
#                                                                    #
# Government disclaimer of liability                                 #
# ----------------------------------                                 #
# Neither the United States nor the United States Department of      #
# Energy, nor any of their employees, makes any warranty, express or #
# implied, or assumes any legal liability or responsibility for the  #
# accuracy, completeness, or usefulness of any data, apparatus,      #
# product, or process disclosed, or represents that its use would    #
# not infringe privately owned rights.                               #
#                                                                    #
# Stanford disclaimer of liability                                   #
# --------------------------------                                   #
# Stanford University makes no representations or warranties,        #
# express or implied, nor assumes any liability for the use of this  #
# software.                                                          #
#                                                                    #
# Maintenance of notices                                             #
# ----------------------                                             #
# In the interest of clarity regarding the origin and status of this #
# software, this and all the preceding Stanford University notices   #
# are to remain affixed to any copy or derivative of this software   #
# made or distributed by the recipient and are to be affixed to any  #
# copy of software made or distributed by the recipient that         #
# contains a copy or derivative of this software.                    #
#                                                                    #
# Based on SLAC Software Notices, Set 4                              #
# OTT.002a, 2004 FEB 03                                              #
######################################################################



######################################################################
#                               NOTICE                               #
# Creative endeavors depend on the lively exchange of ideas. There   #
# are laws and customs which establish rights and responsibilities   #
# for authors and the users of what authors create.  This notice     #
# is not intended to prevent you from using the software and         #
# documents in this package, but to ensure that there are no         #
# misunderstandings about terms and conditions of such use.          #
#                                                                    #
# Please read the following notice carefully.  If you do not         #
# understand any portion of this notice, please seek appropriate     #
# professional legal advice before making use of the software and    #
# documents included in this software package.  In addition to       #
# whatever other steps you may be obliged to take to respect the     #
# intellectual property rights of the various parties involved, if   #
# you do make use of the software and documents in this package,     #
# please give credit where credit is due by citing this package,     #
# its authors and the URL or other source from which you obtained    #
# it, or equivalent primary references in the literature with the    #
# same authors.                                                      #
#                                                                    #
# Some of the software and documents included within this software   #
# package are the intellectual property of various parties, and      #
# placement in this package does not in any way imply that any       #
# such rights have in any way been waived or diminished.             #
#                                                                    #
# With respect to any software or documents for which a copyright    #
# exists, ALL RIGHTS ARE RESERVED TO THE OWNERS OF SUCH COPYRIGHT.   #
#                                                                    #
# Even though the authors of the various documents and software      #
# found here have made a good faith effort to ensure that the        #
# documents are correct and that the software performs according     #
# to its documentation, and we would greatly appreciate hearing of   #
# any problems you may encounter, the programs and documents any     #
# files created by the programs are provided **AS IS** without any   *
# warranty as to correctness, merchantability or fitness for any     #
# particular or general use.                                         #
#                                                                    #
# THE RESPONSIBILITY FOR ANY ADVERSE CONSEQUENCES FROM THE USE OF    #
# PROGRAMS OR DOCUMENTS OR ANY FILE OR FILES CREATED BY USE OF THE   #
# PROGRAMS OR DOCUMENTS LIES SOLELY WITH THE USERS OF THE PROGRAMS   #
# OR DOCUMENTS OR FILE OR FILES AND NOT WITH AUTHORS OF THE          #
# PROGRAMS OR DOCUMENTS.                                             #
######################################################################

######################################################################
#                                                                    #
#                           The IUCr Policy                          #
#      for the Protection and the Promotion of the STAR File and     #
#     CIF Standards for Exchanging and Archiving Electronic Data     #
#                                                                    #
# Overview                                                           #
#                                                                    #
# The Crystallographic Information File (CIF)[1] is a standard for   #
# information interchange promulgated by the International Union of  #
# Crystallography (IUCr). CIF (Hall, Allen & Brown, 1991) is the     #
# recommended method for submitting publications to Acta             #
# Crystallographica Section C and reports of crystal structure       #
# determinations to other sections of Acta Crystallographica         #
# and many other journals. The syntax of a CIF is a subset of the    #
# more general STAR File[2] format. The CIF and STAR File approaches #
# are used increasingly in the structural sciences for data exchange #
# and archiving, and are having a significant influence on these     #
# activities in other fields.                                        #
#                                                                    #
# Statement of intent                                                #
#                                                                    #
# The IUCr's interest in the STAR File is as a general data          #
# interchange standard for science, and its interest in the CIF,     #
# a conformant derivative of the STAR File, is as a concise data     #
# exchange and archival standard for crystallography and structural  #
# science.                                                           #
#                                                                    #
# Protection of the standards                                        #
#                                                                    #
# To protect the STAR File and the CIF as standards for              #
# interchanging and archiving electronic data, the IUCr, on behalf   #
# of the scientific community,                                       #
#                                                                    #
# # holds the copyrights on the standards themselves,                *
#                                                                    #
# # owns the associated trademarks and service marks, and            *
#                                                                    #
# # holds a patent on the STAR File.                                 *
#                                                                    #
# These intellectual property rights relate solely to the            #
# interchange formats, not to the data contained therein, nor to     #
# the software used in the generation, access or manipulation of     #
# the data.                                                          #
#                                                                    #
# Promotion of the standards                                         #
#                                                                    #
# The sole requirement that the IUCr, in its protective role,        #
# imposes on software purporting to process STAR File or CIF data    #
# is that the following conditions be met prior to sale or           #
# distribution.                                                      #
#                                                                    #
# # Software claiming to read files written to either the STAR       *
# File or the CIF standard must be able to extract the pertinent     #
# data from a file conformant to the STAR File syntax, or the CIF    #
# syntax, respectively.                                              #
#                                                                    #
# # Software claiming to write files in either the STAR File, or     *
# the CIF, standard must produce files that are conformant to the    #
# STAR File syntax, or the CIF syntax, respectively.                 #
#                                                                    #
# # Software claiming to read definitions from a specific data       *
# dictionary approved by the IUCr must be able to extract any        #
# pertinent definition which is conformant to the dictionary         #
# definition language (DDL)[3] associated with that dictionary.      #
#                                                                    #
# The IUCr, through its Committee on CIF Standards, will assist      #
# any developer to verify that software meets these conformance      #
# conditions.                                                        #
#                                                                    #
# Glossary of terms                                                  #
#                                                                    #
# [1] CIF:  is a data file conformant to the file syntax defined     #
# at http://www.iucr.org/iucr-top/cif/spec/index.html                #
#                                                                    #
# [2] STAR File:  is a data file conformant to the file syntax       #
# defined at http://www.iucr.org/iucr-top/cif/spec/star/index.html   #
#                                                                    #
# [3] DDL:  is a language used in a data dictionary to define data   #
# items in terms of "attributes". Dictionaries currently approved    #
# by the IUCr, and the DDL versions used to construct these          #
# dictionaries, are listed at                                        #
# http://www.iucr.org/iucr-top/cif/spec/ddl/index.html               #
#                                                                    #
# Last modified: 30 September 2000                                   #
#                                                                    #
# IUCr Policy Copyright (C) 2000 International Union of              #
# Crystallography                                                    #
######################################################################

.DELETE_ON_ERROR:

# Version string
VERSION = 0.9.6

#
# Directories
#
ROOT     = $(PWD)
LIB      = $(ROOT)/lib
SOLIB    = $(ROOT)/solib
JCBF     = $(ROOT)/jcbf
JAVADIR  = $(ROOT)/java
BIN      = $(ROOT)/bin
SRC      = $(ROOT)/src
INCLUDE  = $(ROOT)/include
M4       = $(ROOT)/m4
PYCBF    = $(ROOT)/pycbf
EXAMPLES = $(ROOT)/examples
TEMPLATES= $(ROOT)/templates
DECTRIS_EXAMPLES = $(EXAMPLES)/dectris_cbf_template_test
DOC      = $(ROOT)/doc
MINICBF_TEST = $(ROOT)/minicbf_test
GRAPHICS = $(ROOT)/html_graphics
DATADIRI  = $(ROOT)/../CBFlib_$(VERSION)_Data_Files_Input
DATADIRO  = $(ROOT)/../CBFlib_$(VERSION)_Data_Files_Output
DATADIRS  = $(ROOT)/../CBFlib_$(VERSION)_Data_Files_Output_Sigs_Only
CBF_PREFIX  ?= $(HOME)

#
# Comment out the next line if scratch test files should be retained
#
CLEANTESTS = yes


MSYS2=no
CBFLIB_DONT_USE_LOCAL_HDF5?=no
CBFLIB_DONT_USE_LZ4?=no
CBFLIB_DONT_USE_BSHUF?=no


CBFLIB_DONT_HAVE_FGETLN ?= yes
ifeq ($(CBFLIB_DONT_HAVE_FGETLN),yes)
SRC_FGETLN = $(SRC)/fgetln.c
else
SRC_FGETLN =
endif


CBFLIB_DONT_USE_PYCIFRW ?= no
ifneq ($(CBFLIB_DONT_USE_PYCIFRW),yes)
#
# Definitions to get versions of PyCifRW and PLY
#
PYCIFRW ?= PyCifRW-4.1
PLY = ply-3.2
PYCIFRWFLAG = -DCBF_USE_PYCIFRW
PYCIFRW_PREFIX ?= $(HOME)/.local
endif

#
# Definition to get a version of tifflib to support tiff2cbf
#
TIFF ?= tiff-4.0.6_rev_3Nov16
TIFF_PREFIX ?= $(PWD)
TIFF_INSTALL = $(TIFF)_INSTALL


#
# Definitions to get a version of HDF5
#

ifneq ($(HDF5_PREFIX),) # already installed on system
CBFLIB_DONT_USE_LOCAL_HDF5 = yes
endif

ifneq ($(CBFLIB_DONT_USE_LOCAL_HDF5),yes)
HDF5_PREFIX ?= $(PWD)
HDF5 ?= hdf5-1.10.6
#HDF5 = hdf5-1.8.18
#HDF5 = hdf5-1.10.5
HDF5dep = $(HDF5)
HDF5_INSTALL = $(HDF5)_INSTALL
ifneq ($(MSYS2),yes)
HDF5LIBS_LOCAL = $(LIB)/libhdf5.a
HDF5LIBS_SYSTEM = -lz -ldl
HDF5SOLIBS_LOCAL = -L$(LIB) -lhdf5
HDF5SOLIBS_SYSTEM = -lz
else
HDF5LIBS_LOCAL = -L$(LIB) -lhdf5 -lhdf5.dll
HDF5LIBS_SYSTEM = -lz -ldl
HDF5SOLIBS_LOCAL = -L$(LIB) -lhdf5 -lhdf5.dll
HDF5SOLIBS_SYSTEM = -lz
endif
else
HDF5 =
HDF5dep =
HDF5_INSTALL =
HDF5LIBS_LOCAL =
ifneq ($(HDF5_PREFIX),)
HDF5lib = -L$(HDF5_PREFIX)/lib
endif
ifneq ($(MSYS2),yes)
HDF5LIBS_SYSTEM = $(HDF5lib) -lhdf5 -lz -ldl
HDF5SOLIBS_LOCAL =
HDF5SOLIBS_SYSTEM = $(HDF5lib) -lhdf5 -lz
else
HDF5LIBS_SYSTEM = $(HDF5lib) -lhdf5 -lhdf5.dll -lz -ldl
HDF5SOLIBS_LOCAL =
HDF5SOLIBS_SYSTEM = $(HDF5lib) -lhdf5 -lhdf5.dll -lz
endif
endif

HDF5REGISTER ?= --register manual
ifneq ($(HDF5_PREFIX),)
HDF5include = -I$(HDF5_PREFIX)/include
endif

ifneq ($(MSYS2),yes)
H5DUMP = $(HDF5_PREFIX)/bin/h5dump
else
H5DUMP = /MINGW32/bin/h5dump
endif


CBFLIB_DONT_USE_LZ4 ?= no
ifneq ($(CBFLIB_DONT_USE_LZ4),yes)
#
# Definitions to get a version of HDF5Plugin for LZ4
#
ifneq ($(MSYS2),yes)
LZ4 ?= HDF5Plugin_14Aug20
else
LZ4 ?= HDF5-External-Filter-Plugins
endif
LZ4dep = $(LZ4)
LZ4src = $(LZ4)/src
LZ4include = $(LZ4)/include
LZ4SOLIBS = -L$(SOLIB) -lh5zlz4
else
LZ4SOLIBS =
LZ4dep =
endif

CBFLIB_DONT_USE_BSHUF ?= no
ifneq ($(CBFLIB_DONT_USE_BSHUF),yes)
#
# Definitions to get a version of HDF5Plugin for BSHUFFLE WITH LZ4
#
BSHUF ?= bitshuffle-0.2.2.1_15Jun16
BSUFdep = $(BSHUF)
BSHUFsrc = $(BSHUF)/src
BSHUFinclude = $(BSHUF)/src
BSHUFSOLIBS = -L$(SOLIB) -lh5zbshuf
BSHUFFILTER = libbshuf_h5filter
else
BSHUFSOLIBS =
BSHUFdep =
endif

CBFLIB_DONT_USE_BLOSC ?= no
ifneq ($(CBFLIB_DONT_USE_BLOSC),yes)
#
# Definitions to get a version of HDF5Plugin for BLOSC
#
BLOSC = ?c-blosc_4Sep16.tar.gz
BLOSCdep = $(BLOSC)
BLOSCFILTER = hdf5-blosc_2Sep16.tar.gz
BLOSCsrc = $(BLOSC)/src
BLOSCinclude = $(BLOSC)/src
BLOSCSOLIBS = -L$(SOLIB) -lh5zbshuf
BLOSCFILTER = libbshuf_h5filter
else
BLOSCSOLIBS =
BLOSCdep =
endif



#
# Definition of python to use
#
#PYTHON = python
PYTHON ?= python2


#
# Definitions to get a stable version of regex
#
REGEX_PREFIX ?= $(PWD)
ifneq ($(REGEX_PREFIX),$(PWD))
CBFLIB_DONT_USE_LOCAL_REGEX ?=  yes
endif


REGEX_LIBDIR ?= $(REGEX_PREFIX)/lib
ifneq ($(CBFLIB_DONT_USE_LOCAL_REGEX),yes)
REGEX ?= pcre-8.38
REGEXDEP = $(REGEX)
REGEX_INSTALL = $(REGEX)_INSTALL
REGEX_LIB ?= pcreposix
REGEX_LIB2 ?= pcre
ifneq ($(MSYS2),yes)
REGEX_LIBS ?= -L $(REGEX_LIBDIR) -l$(REGEX_LIB) -l$(REGEX_LIB2)
REGEX_LIBS_STATIC = $(LIB)/libpcreposix.a $(LIB)/libpcre.a
else
REGEX_LIBS ?= -L $(REGEX_LIBDIR) -l$(REGEX_LIB) -l$(REGEX_LIB).dll -l$(REGEX_LIB2) -l$(REGEX_LIB2).dll
REGEX_LIBS_STATIC = $(REGEX_LIBS)
endif
REGEX_INCLUDES ?= -I $(REGEX_PREFIX)
else
REGEX =
REGEXDEP =
REGEX_INSTALL =
REGEX_LIB ?=
REGEX_LIB2 ?=
REGEX_LIBS ?=
REGEX_INCLUDES ?=
endif


# Program to use to retrieve a URL

DOWNLOAD ?= wget -N
#DOWNLOAD   ?= curl -O -L

# Flag to control symlinks versus copying

SLFLAGS = --use_ln
LN = ln -s -f

#
# Program to use to pack shars
#
SHAR	= /usr/bin/shar
#SHAR	= /usr/local/bin/gshar

#
# Program to use to create archives
#
AR	= /usr/bin/ar

#
# Program to use to add an index to an archive
#
RANLIB  = /usr/bin/ranlib


#
# Program to use to generate a signature
#
#SIGNATURE ?= /usr/bin/openssl dgst -md5
#SIGNATURE ?= (/usr/bin/openssl dgst -md5 | sed "s/^.*= //")
SIGNATURE ?= ( cat > md5tmp; cmake -E md5sum md5tmp| sed "s/ .*//")

#
# Pipe command to extract all but the first line of a text file
#
ALLBUTONE = tail -n +2


#
# Extension for signatures of files
#
SEXT = .md5

# Default shell

SHELL = bash

# call to time a command

#TIME =
#TIME = time

#
# Program to display differences between files
#
DIFF = diff -u -b


#
# Program to generate wrapper classes for Python
#
PYSWIG = swig -python

#
# Program to generate wrapper classes for Java
#
JSWIG = swig -java

#
# Program to generate LaTex and HTML program documentation
#

NUWEB = nuweb

#
# Compiler for Java
#
JAVAC = javac

#
# Java archiver for compiled classes
#
JAR = jar

#
# Java SDK root directory
#
ifeq ($(JDKDIR),)
	JDKDIR 	=	/usr/lib/java
endif

ifneq ($(CBF_DONT_USE_LONG_LONG),)
NOLLFLAG = -DCBF_DONT_USE_LONG_LONG
else
NOLLFLAG =
endif

ifneq ($(CBF_NO_REGEX),)
CBF_REGEXFLAG = -DCBF_NO_REGEX
else
CBF_REGEXFLAG = -DCBF_REGEXLIB_REGEX
endif

ifneq ($(CBF_USE_ULP),)
ULPFLAG = -DCBF_USE_ULP
else
ULPFLAG =
endif

ifneq ($(CBFLIB_DONT_USE_LZ4),yes)
LZ4FLAG = -DCBF_H5Z_USE_LZ4
else
LZ4FLAG =
endif

ifneq ($(CBFLIB_DONT_USE_BSHUF),yes)
BSHUFFLAG = -DCBF_H5Z_USE_BSHUF
else
BSHUFFLAG =
endif



MISCFLAG = $(NOLLFLAG) $(ULPFLAG)

#
# PYCBF definitions
#
PYCBFEXT = so
PYCBFBOPT =
PYCBFIOPT =
SETUP_PY = setup.py
INSTALLSETUP_PY = installsetup.py

#
# Set the compiler and flags
#

#########################################################
#
#  Appropriate compiler definitions for default (Linux)
#
#########################################################
CC	= gcc
C++	= g++
ifneq ($(CBFDEBUG),)
CFLAGS  = -g -O0 -Wall -D_USE_XOPEN_EXTENDED -fno-strict-aliasing -DCBFDEBUG=1
else
CFLAGS  = -g -O3 -Wall -D_USE_XOPEN_EXTENDED -fno-strict-aliasing
endif
LDFLAGS =
F90C = gfortran
F90FLAGS = -g -fno-range-check
F90LDFLAGS = 
SOCFLAGS = -fPIC
SOLDFLAGS = -shared -Wl,-rpath,$(CBF_PREFIX)/lib
JAVAINCLUDES = -I$(JDKDIR)/include -I$(JDKDIR)/include/linux
LDPREFIX = LD_LIBRARY_PATH=$(SOLIB):$(LIB):$$LD_LIBRARY_PATH;export LD_LIBRARY_PATH;
#LDPREFIX = LD_LIBRARY_PATH=$(SOLIB):$$LD_LIBRARY_PATH;export LD_LIBRARY_PATH;
RUNLDPREFIX = LD_LIBRARY_PATH=$(CBF_PREFIX)/LIB:$$LD_LIBRARY_PATH;export LD_LIBRARY_PATH;
EXTRALIBS = -lm
M4FLAGS = -Dfcb_bytes_in_rec=131072
TIME = time

ifneq ($(NOFORTRAN),)
F90C =
endif

#
# URLs from which to retrieve the data directories
#
DATAURLBASE	= http://downloads.sf.net/cbflib/
DATAURLI	= $(DATAURLBASE)/CBFlib_$(VERSION)_Data_Files_Input.tar.gz
DATAURLO	= $(DATAURLBASE)/CBFlib_$(VERSION)_Data_Files_Output.tar.gz
DATAURLS	= $(DATAURLBASE)/CBFlib_$(VERSION)_Data_Files_Output_Sigs_Only.tar.gz

#
# URLs from which to retrieve needed external package snapshots
#
ifneq ($(CBFLIB_DONT_USE_PYCIFRW),yes)
PYCIFRWURL	= http://downloads.sf.net/cbflib/$(PYCIFRW).tar.gz
PLYURL		= http://www.dabeaz.com/ply/$(PLY).tar.gz
endif
REGEX_URL	?= http://downloads.sf.net/cbflib/$(REGEX).tar.gz
TIFF_URL	?= http://downloads.sf.net/cbflib/$(TIFF).tar.gz
HDF5_URL	?= http://downloads.sf.net/cbflib/$(HDF5).tar.gz
ifneq ($(MSYS2),yes)
LZ4_URL		= http://downloads.sf.net/cbflib/$(LZ4).tar.gz
else
LZ4_URL		= http://www.github.com/yayahjb/$(LZ4).git
endif
BSHUFURL    = http://downloads.sf.net/cbflib/$(BSHUF).tar.gz


#
# Include directories
#
INCLUDES = -I$(INCLUDE) -I$(SRC) $(HDF5include)

#
# runtime library path export commands
#
RTLPEXPORTS = LD_LIBRARY_PATH=$(PWD)/solib:$(PWD)/lib;export LD_LIBRARY_PATH; \
	DYLD_LIBRARY_PATH=$(PWD)/solib:$(PWD)/lib;export DYLD_LIBRARY_PATH; \
	LD_RUN_PATH=$(PWD)/solib:$(PWD)/lib;export LD_RUN_PATH;


######################################################################
#  You should not need to make modifications below this line		 #
######################################################################

ifneq ($(CBF_USE_ULP),)
SRC_CBF_ULP_C     =	$(SRC)/cbf_ulp.c
INCLUDE_CBF_ULP_H =	$(INCLUDE)/cbf_ulp.h
BIN_TESTULP       = $(BIN)/testulp
else
SRC_CBF_ULP_C =
INCLUyDE_CBF_ULP_H =
BIN_TESTULP =
endif

ifneq ($(MSYS2),yes)
SRC_REALPATH =
else
SRC_REALPATH = $(SRC)/realpath.c
endif


#
# Suffixes of files to be used or built
#
.SUFFIXES:	.c .o .f90 .m4

.m4.f90:
	m4 -P $(M4FLAGS) $< > $@

ifneq ($(F90C),)
.f90.o:
	$(F90C) $(F90FLAGS) -c $< -o $@
endif


#
# Common dependencies
#
COMMONDEP = $(M4)/Makefile.m4

#
# Source files
#

SOURCE   =  $(SRC)/cbf.c               \
	$(SRC)/cbf_airy_disk.c     \
	$(SRC)/cbf_alloc.c         \
	$(SRC)/cbf_ascii.c         \
	$(SRC)/cbf_binary.c        \
	$(SRC)/cbf_byte_offset.c   \
	$(SRC)/cbf_canonical.c     \
	$(SRC)/cbf_codes.c         \
	$(SRC)/cbf_compress.c      \
	$(SRC)/cbf_context.c       \
	$(SRC)/cbf_copy.c          \
	$(SRC)/cbf_file.c          \
	$(SRC)/cbf_getopt.c        \
	$(SRC)/cbf_hdf5.c          \
	$(SRC)/cbf_hdf5_filter.c   \
	$(SRC)/cbf_lex.c           \
	$(SRC)/cbf_minicbf_header.c\
	$(SRC)/cbf_nibble_offset.c \
	$(SRC)/cbf_packed.c        \
	$(SRC)/cbf_predictor.c     \
	$(SRC)/cbf_read_binary.c   \
	$(SRC)/cbf_read_mime.c     \
	$(SRC)/cbf_simple.c        \
	$(SRC)/cbf_string.c        \
	$(SRC)/cbf_stx.c           \
	$(SRC)/cbf_tree.c          \
	$(SRC_CBF_ULP_C)           \
	$(SRC)/cbf_uncompressed.c  \
	$(SRC)/cbf_write.c         \
	$(SRC)/cbf_write_binary.c  \
	$(SRC)/cbf_ws.c            \
	$(SRC)/cbff.c              \
	$(SRC)/md5c.c              \
	$(SRC)/img.c               \
	$(SRC_FGETLN) $(SRC_REALPATH)

ifneq ($(CBFLIB_DONT_USE_PYCIFRW),yes)
PYSOURCE  = $(SRC)/drel_lex.py		   \
	$(SRC)/drel_yacc.py		   \
	$(SRC)/drelc.py \
	$(SRC)/drel_prep.py
endif

F90SOURCE = $(SRC)/fcb_atol_wcnt.f90     \
	$(SRC)/fcb_ci_strncmparr.f90 \
	$(SRC)/fcb_exit_binary.f90   \
	$(SRC)/fcb_nblen_array.f90   \
	$(SRC)/fcb_next_binary.f90   \
	$(SRC)/fcb_open_cifin.f90    \
	$(SRC)/fcb_packed.f90        \
	$(SRC)/fcb_read_bits.f90     \
	$(SRC)/fcb_read_byte.f90     \
	$(SRC)/fcb_read_image.f90    \
	$(SRC)/fcb_read_line.f90     \
	$(SRC)/fcb_read_xds_i2.f90   \
	$(SRC)/fcb_skip_whitespace.f90
	
	
#
# Header files
#
HEADERS   =  $(INCLUDE)/cbf.h               \
	$(INCLUDE)/cbf_airy_disk.h     \
	$(INCLUDE)/cbf_alloc.h         \
	$(INCLUDE)/cbf_ascii.h         \
	$(INCLUDE)/cbf_binary.h        \
	$(INCLUDE)/cbf_byte_offset.h   \
	$(INCLUDE)/cbf_canonical.h     \
	$(INCLUDE)/cbf_codes.h         \
	$(INCLUDE)/cbf_compress.h      \
	$(INCLUDE)/cbf_context.h       \
	$(INCLUDE)/cbf_copy.h          \
	$(INCLUDE)/cbf_file.h          \
	$(INCLUDE)/cbf_getopt.h        \
	$(INCLUDE)/cbf_hdf5.h          \
	$(INCLUDE)/cbf_hdf5_filter.h   \
	$(INCLUDE)/cbf_lex.h           \
	$(INCLUDE)/cbf_minicbf_header.h\
	$(INCLUDE)/cbf_nibble_offset.h \
	$(INCLUDE)/cbf_packed.h        \
	$(INCLUDE)/cbf_predictor.h     \
	$(INCLUDE)/cbf_read_binary.h   \
	$(INCLUDE)/cbf_read_mime.h     \
	$(INCLUDE)/cbf_simple.h        \
	$(INCLUDE)/cbf_string.h        \
	$(INCLUDE)/cbf_stx.h           \
	$(INCLUDE)/cbf_tree.h          \
	$(INCLUDE)/cbf_uncompressed.h  \
	$(INCLUDE_CBF_ULP_H)           \
	$(INCLUDE)/cbf_write.h         \
	$(INCLUDE)/cbf_write_binary.h  \
	$(INCLUDE)/cbf_ws.h            \
	$(INCLUDE)/global.h            \
	$(INCLUDE)/cbff.h              \
	$(INCLUDE)/md5.h               \
	$(INCLUDE)/img.h

#
# m4 macro files
#
M4FILES   = $(M4)/fcblib_defines.m4         \
	$(M4)/fcb_exit_binary.m4        \
	$(M4)/fcb_next_binary.m4        \
	$(M4)/fcb_open_cifin.m4		\
	$(M4)/fcb_packed.m4             \
	$(M4)/fcb_read_bits.m4          \
	$(M4)/fcb_read_image.m4		\
	$(M4)/fcb_read_xds_i2.m4        \
	$(M4)/test_fcb_read_image.m4    \
	$(M4)/test_xds_binary.m4


#
# Documentation files
#
DOCUMENTS = $(DOC)/CBFlib.html              \
	$(DOC)/CBFlib.txt               \
	$(DOC)/CBFlib_NOTICES.html      \
	$(DOC)/CBFlib_NOTICES.txt       \
	$(DOC)/ChangeLog                \
	$(DOC)/ChangeLog.html           \
	$(DOC)/MANIFES                  \
	$(DOC)/gpl.txt $(DOC)/lgpl.txt

#
# HTML Graphics files
#
JPEGS     = $(GRAPHICS)/CBFbackground.jpg   \
	$(GRAPHICS)/CBFbig.jpg          \
	$(GRAPHICS)/CBFbutton.jpg       \
	$(GRAPHICS)/cbflibbackground.jpg\
	$(GRAPHICS)/cbflibbig.jpg       \
	$(GRAPHICS)/cbflibbutton.jpg    \
	$(GRAPHICS)/cifhome.jpg         \
	$(GRAPHICS)/iucrhome.jpg        \
	$(GRAPHICS)/noticeButton.jpg


#
# Default: instructions
#
default:
	@echo ' '
	@echo '***************************************************************'
	@echo ' '
	@echo ' PLEASE READ README and doc/CBFlib_NOTICES.txt'
	@echo ' '
	@echo ' Before making the CBF library and example programs, check'
	@echo ' that the C compiler name and flags are correct:'
	@echo ' '
	@echo ' The current values are:'
	@echo ' '
	@echo '   $(CC) $(CFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(PYCIFRWFLAG)'
	@echo ' '
	@echo ' Before installing the CBF library and example programs, check'
	@echo ' that the install directory is correct:'
	@echo ' '
	@echo ' The current value :'
	@echo ' '
	@echo '   $(CBF_PREFIX) '	
	@echo ' '
	@echo ' To compile the CBF library and example programs type:'
	@echo ' '
	@echo '   make clean'
	@echo '   make all'
	@echo ' '
	@echo ' To compile the CBF library as a shared object library, type:'
	@echo ' '
	@echo '   make shared'
	@echo ' '
	@echo ' To compile the Java wrapper classes for CBF library, type:'
	@echo ' '
	@echo '   make javawrapper'
	@echo ' '
	@echo ' To run a set of tests type:'
	@echo ' '
	@echo '   make tests'
	@echo ' '
	@echo ' To run some java tests type:'
	@echo ' '
	@echo '   make javatests'
	@echo ' '
	@echo ' The tests assume that several data files are in the directories' 
	@echo ' $(DATADIRI) and $(DATADIRO)'
	@echo ' '
	@echo ' Alternatively tests can be run comparing MD5 signatures only by' 
	@echo ' '
	@echo '   make tests_sigs_only'
	@echo ' '
	@echo ' These signature only tests save space and download time by'
	@echo ' assuming that input data files and the output signatures'
	@echo ' are in the directories' 
	@echo '  $(DATADIRI) and $(DATADIRS)'
	@echo ' '
	@echo ' These directory can be obtained from'
	@echo ' '
	@echo '   $(DATAURLI) '
	@echo '   $(DATAURLO) '
	@echo '   $(DATAURLS) '
	@echo ' '
	@echo ' To clean up the directories type:'
	@echo ' '
	@echo '   make clean'
	@echo ' '
	@echo ' To install the library and binaries type:'
	@echo ' '
	@echo '   make install'
	@echo ' '
	@echo '***************************************************************'
	@echo ' '

#
# Compile the library and examples
#
ifneq ($(CBFLIB_DONT_USE_PYCIFRW),yes)
PYCIFRWDEPS = $(PYCIFRW) $(PLY)
else
PYCIFRWDEPS =
endif

ifneq ($(CBFLIB_DONT_USE_LZ4),yes)
LZ4DEPS = $(LZ4)
else
LZ4DEPS =
endif

ifneq ($(CBFLIB_DONT_USE_BSHUF),yes)
BSHUFDEPS = $(BSHUF)
else
BSHUFDEPS =
endif


all::	$(BIN) $(SOURCE) $(F90SOURCE) $(HEADERS) \
	$(HDF5)               \
	$(LZ4DEPS)            \
	$(BSHUFDEPS)          \
	$(PYCIFRWDEPS)        \
	symlinksdone          \
	$(REGEXDEP)           \
	$(LIB)                \
	$(LIB)/libcbf.a       \
	$(LIB)/libfcb.a       \
	$(LIB)/libimg.a       \
	$(BIN)/adscimg2cbf    \
	$(BIN)/arvai_test     \
	$(BIN)/cbf2adscimg    \
	$(BIN)/cbf2nexus      \
	$(BIN)/cif2c          \
	$(BIN)/cif2cbf        \
	$(BIN)/cbf_standardize_numbers \
	$(BIN)/convert_image  \
	$(BIN)/convert_minicbf\
	$(BIN)/img2cif        \
	$(BIN)/makecbf        \
	$(BIN)/minicbf2nexus  \
	$(BIN)/nexus2cbf      \
	$(BIN)/roi_peaksearch \
	$(BIN)/sequence_match \
	$(BIN)/testcell       \
	$(BIN)/testalloc      \
	$(BIN)/testreals      \
	$(BIN)/testflat       \
	$(BIN)/testflatpacked \
	$(BIN)/testhdf5       \
	$(BIN_TESTULP)        \
	$(BIN)/tiff2cbf       \
	$(BIN)/test_cbf_airy_disk \
	$(BIN)/cbf_testxfelread

ifneq ($(F90C),)
all::	$(BIN)/test_xds_binary   \
	$(BIN)/test_fcb_read_image
endif

shared:	$(SOLIB)/libcbf.so $(SOLIB)/libfcb.so $(SOLIB)/libimg.so

javawrapper: shared $(JCBF) $(JCBF)/cbflib-$(VERSION).jar $(SOLIB)/libcbf_wrap.so

ifneq ($(CBFLIB_DONT_USE_PYCIFRW),yes)
PYCIFRWDEF = -Dcbf_use_pycifrw=yes
else
PYCIFRWDEF =
endif


Makefiles: Makefile			 \
	Makefile_LINUX		   \
	Makefile_LINUX_64		\
	Makefile_LINUX_gcc42     \
	Makefile_LINUX_DMALLOC   \
	Makefile_LINUX_gcc42_DMALLOC \
	Makefile_OSX			 \
	Makefile_OSX_gcc42       \
	Makefile_OSX_gcc42_DMALLOC   \
	Makefile_AIX			 \
	Makefile_MINGW		   \
	Makefile_MSYS2         \
	Makefile_IRIX_gcc


Makefile_LINUX: $(M4)/Makefile.m4
	-cp Makefile_LINUX Makefile_LINUX_old
	m4 -P $(PYCIFRWDEF) -Dcbf_system=LINUX $(M4)/Makefile.m4 > Makefile_LINUX.tmp
	mv Makefile_LINUX.tmp Makefile_LINUX

Makefile_LINUX_DMALLOC: $(M4)/Makefile.m4
	-cp Makefile_LINUX Makefile_LINUX_old
	m4 -P $(PYCIFRWDEF) -Dcbf_system=LINUX_DMALLOC $(M4)/Makefile.m4 > Makefile_LINUX_DMALLOC.tmp
	mv Makefile_LINUX_DMALLOC.tmp Makefile_LINUX_DMALLOC

Makefile_LINUX_64: $(M4)/Makefile.m4
	-cp Makefile_LINUX_64 Makefile_LINUX_64_old
	m4 -P $(PYCIFRWDEF) -Dcbf_system=LINUX_64 $(M4)/Makefile.m4 > Makefile_LINUX_64.tmp
	mv Makefile_LINUX_64.tmp Makefile_LINUX_64

Makefile_LINUX_gcc42: $(M4)/Makefile.m4
	-cp Makefile_LINUX_gcc42 Makefile_LINUX_gcc42_old
	m4 -P $(PYCIFRWDEF) -Dcbf_system=LINUX_gcc42 $(M4)/Makefile.m4 > Makefile_LINUX_gcc42.tmp 
	mv Makefile_LINUX_gcc42.tmp Makefile_LINUX_gcc42

Makefile_LINUX_gcc42_DMALLOC: $(M4)/Makefile.m4
	-cp Makefile_LINUX_gcc42 Makefile_LINUX_gcc42_old
	m4 -P $(PYCIFRWDEF) -Dcbf_system=LINUX_gcc42_DMALLOC $(M4)/Makefile.m4 > Makefile_LINUX_gcc42_DMALLOC.tmp
	mv Makefile_LINUX_gcc42_DMALLOC.tmp Makefile_LINUX_gcc42_DMALLOC

Makefile_OSX: $(M4)/Makefile.m4
	-cp Makefile_OSX Makefile_OSX_old
	m4 -P $(PYCIFRWDEF) -Dcbf_system=OSX $(M4)/Makefile.m4 > Makefile_OSX.tmp
	mv Makefile_OSX.tmp Makefile_OSX

Makefile_OSX_gcc42: $(M4)/Makefile.m4
	-cp Makefile_OSX_gcc42 Makefile_OSX_gcc42_old
	m4 -P $(PYCIFRWDEF) -Dcbf_system=OSX_gcc42 $(M4)/Makefile.m4 > Makefile_OSX_gcc42.tmp
	mv Makefile_OSX_gcc42.tmp Makefile_OSX_gcc42

Makefile_OSX_gcc42_DMALLOC: $(M4)/Makefile.m4
	-cp Makefile_OSX_gcc42 Makefile_OSX_gcc42_old
	m4 -P $(PYCIFRWDEF) -Dcbf_system=OSX_gcc42_DMALLOC $(M4)/Makefile.m4 > Makefile_OSX_gcc42_DMALLOC.tmp
	mv Makefile_OSX_gcc42_DMALLOC.tmp Makefile_OSX_gcc42_DMALLOC

Makefile_AIX: $(M4)/Makefile.m4
	-cp Makefile_AIX Makefile_AIX_old
	m4 -P $(PYCIFRWDEF) -Dcbf_system=AIX $(M4)/Makefile.m4 > Makefile_AIX.tmp
	mv Makefile_AIX.tmp Makefile_AIX

Makefile_MINGW: $(M4)/Makefile.m4
	-cp Makefile_MINGW Makefile_MINGW_old
	m4 -P $(PYCIFRWDEF) -Dcbf_system=MINGW $(M4)/Makefile.m4 > Makefile_MINGW.tmp
	mv Makefile_MINGW.tmp Makefile_MINGW

Makefile_MSYS2: $(M4)/Makefile.m4
	-cp Makefile_MSYS2 Makefile_MSYS2_old
	m4 -P $(PYCIFRWDEF) -Dcbf_system=MSYS2 $(M4)/Makefile.m4 > Makefile_MSYS2.tmp
	mv Makefile_MSYS2.tmp Makefile_MSYS2

Makefile_IRIX_gcc: $(M4)/Makefile.m4
	-cp Makefile_IRIX_gcc Makefile_IRIX_gcc_old
	m4 -P $(PYCIFRWDEF) -Dcbf_system=IRIX_gcc $(M4)/Makefile.m4 > Makefile_IRIX_gcc.tmp
	mv Makefile_IRIX_gcc.tmp Makefile_IRIX_gcc

	
Makefile: $(M4)/Makefile.m4
	-cp Makefile Makefile_old
	m4 -P $(PYCIFRWDEF) -Dcbf_system=default $(M4)/Makefile.m4 > Makefile.tmp
	mv Makefile.tmp Makefile 

cbflib.ini: $(M4)/Makefile.m4
	echo  "$(LDPREFIX)" > cbflib.ini
	echo  "HDF5_PLUGIN_PATH=$(SOLIB):$$HDF5_PLUGIN_PATH" >> cbflib.ini
	echo  "export HDF5_PLUGIN_PATH" >> cbflib.ini

symlinksdone:
	chmod a+x .symlinks
	chmod a+x .undosymlinks
	chmod a+x doc/.symlinks
	chmod a+x doc/.undosymlinks
	./.symlinks $(SLFLAGS)
	touch symlinksdone

install:  baseinstall pycbfinstall \
	$(HDF5_INSTALL) \
	$(TIFF_INSTALL) \
	$(REGEX_INSTALL)

userinstall: baseinstall pycbfuserinstall \
	$(HDF5_INSTALL) \
	$(TIFF_INSTALL) \
	$(REGEX_INSTALL)

baseinstall:  all $(CBF_PREFIX) $(CBF_PREFIX)/lib $(CBF_PREFIX)/bin \
	$(CBF_PREFIX)/include $(CBF_PREFIX)/include/cbflib \
	$(PYSOURCE) shared $(EXAMPLES)/batch_convert_minicbf.sh \
	$(LIB)/libcbf.a $(LIB)/libimg.a $(LIB)/libfcb.a \
	$(SOLIB)/libcbf.so $(SOLIB)/libimg.so $(SOLIB)/libfcb.so
	-chmod -R 755 $(CBF_PREFIX)/include/cbflib
	-chmod 755 $(CBF_PREFIX)/lib/libcbf.a
	-cp $(CBF_PREFIX)/lib/libcbf.a $(CBF_PREFIX)/lib/libcbf_old.a
	cp $(LIB)/libcbf.a $(CBF_PREFIX)/lib/libcbf.a
	-chmod 755 $(CBF_PREFIX)/lib/libimg.a
	-cp $(CBF_PREFIX)/lib/libimg.a $(CBF_PREFIX)/lib/libimg_old.a
	cp $(LIB)/libimg.a $(CBF_PREFIX)/lib/libimg.a
	-chmod 755 $(CBF_PREFIX)/lib/libfcb.a
	-cp $(CBF_PREFIX)/lib/libfcb.a $(CBF_PREFIX)/lib/libfcb_old.a
	cp $(LIB)/libfcb.a $(CBF_PREFIX)/lib/libfcb.a
	-chmod 755 $(CBF_PREFIX)/lib/libcbf.so
	-cp $(CBF_PREFIX)/lib/libcbf.so $(CBF_PREFIX)/lib/libcbf_old.so
	cp $(SOLIB)/libcbf.so $(CBF_PREFIX)/lib/libcbf.so
	$(LN) $(CBF_PREFIX)/lib/libcbf.so $(CBF_PREFIX)/lib/lib_cbf.so
	-chmod 755 $(CBF_PREFIX)/lib/libimg.so
	-cp $(CBF_PREFIX)/lib/libimg.so $(CBF_PREFIX)/lib/libimg_old.so
	cp $(SOLIB)/libimg.so $(CBF_PREFIX)/lib/libimg.so
	$(LN) $(CBF_PREFIX)/lib/libimg.so $(CBF_PREFIX)/lib/lib_img.so
	-chmod 755 $(CBF_PREFIX)/lib/libfcb.so
	-cp $(CBF_PREFIX)/lib/libfcb.so $(CBF_PREFIX)/lib/libfcb_old.so
	cp $(SOLIB)/libfcb.so $(CBF_PREFIX)/lib/libfcb.so
	$(LN) $(CBF_PREFIX)/lib/libfcb.so $(CBF_PREFIX)/lib/lib_fcb.so
	-cp $(CBF_PREFIX)/bin/cbflib.ini $(CBF_PREFIX)/bin/cbflib.ini_old
	echo  "$(RUNLDPREFIX)" > $(CBF_PREFIX)/bin/cbflib.ini
	echo  "HDF5_PLUGIN_PATH=$(CBF_PREFIX)/lib:$$HDF5_PLUGIN_PATH" >> $(CBF_PREFIX)/bin/cbflib.ini
	echo  "export HDF5_PLUGIN_PATH" >> $(CBF_PREFIX)/bin/cbflib.ini
	-cp $(CBF_PREFIX)/bin/adscimg2cbf $(CBF_PREFIX)/bin/adscimg2cbf_old
	cp $(BIN)/adscimg2cbf $(CBF_PREFIX)/bin/adscimg2cbf
	-cp $(CBF_PREFIX)/bin/cbf2adscimg $(CBF_PREFIX)/bin/cbf2adscimg_old
	cp $(BIN)/cbf2adscimg $(CBF_PREFIX)/bin/cbf2adscimg
	-cp $(CBF_PREFIX)/bin/cbf_standardize_numbers \
		$(CBF_PREFIX)/bin/cbf_standardize_numbers_old
	cp $(BIN)/cbf_standardize_numbers $(CBF_PREFIX)/bin/cbf_standardize_numbers
	-cp $(CBF_PREFIX)/bin/convert_image $(CBF_PREFIX)/bin/convert_image_old
	cp $(BIN)/convert_image $(CBF_PREFIX)/bin/convert_image
	-cp $(CBF_PREFIX)/bin/convert_minicbf $(CBF_PREFIX)/bin/convert_minicbf_old
	cp $(BIN)/convert_minicbf $(CBF_PREFIX)/bin/convert_minicbf
	-cp $(CBF_PREFIX)/bin/makecbf $(CBF_PREFIX)/bin/makecbf_old
	cp $(BIN)/makecbf $(CBF_PREFIX)/bin/makecbf
	-cp $(CBF_PREFIX)/bin/img2cif $(CBF_PREFIX)/bin/img2cif_old
	cp $(BIN)/img2cif $(CBF_PREFIX)/bin/img2cif
	-cp $(CBF_PREFIX)/bin/cif2cbf $(CBF_PREFIX)/bin/cif2cbf_old
	cp $(BIN)/cif2cbf $(CBF_PREFIX)/bin/cif2cbf
	-cp $(CBF_PREFIX)/bin/minicbf2nexus $(CBF_PREFIX)/bin/minicbf2nexus_old
	cp $(BIN)/minicbf2nexus $(CBF_PREFIX)/bin/minicbf2nexus
	-cp $(CBF_PREFIX)/bin/cbf2nexus $(CBF_PREFIX)/bin/cbf2nexus_old
	cp $(BIN)/cbf2nexus $(CBF_PREFIX)/bin/cbf2nexus
	-cp $(CBF_PREFIX)/bin/nexus2cbf $(CBF_PREFIX)/bin/nexus2cbf_old
	cp $(BIN)/nexus2cbf $(CBF_PREFIX)/bin/nexus2cbf
	-cp $(CBF_PREFIX)/bin/roi_peaksearch $(CBF_PREFIX)/bin/roi_peaksearch_old
	cp $(BIN)/roi_peaksearch $(CBF_PREFIX)/bin/roi_peaksearch
	-cp $(CBF_PREFIX)/bin/sequence_match $(CBF_PREFIX)/bin/sequence_match_old
	cp $(BIN)/sequence_match $(CBF_PREFIX)/bin/sequence_match
	-cp $(CBF_PREFIX)/bin/testalloc $(CBF_PREFIX)/bin/testalloc_old
	cp $(BIN)/testalloc $(CBF_PREFIX)/bin/testalloc
	-cp $(CBF_PREFIX)/bin/arvai_test $(CBF_PREFIX)/bin/arvai_test_old
	cp $(BIN)/arvai_test $(CBF_PREFIX)/bin/arvai_test
	-cp $(CBF_PREFIX)/bin/cif2c $(CBF_PREFIX)/bin/cif2c_old
	cp $(BIN)/cif2c $(CBF_PREFIX)/bin/cif2c
	-cp $(CBF_PREFIX)/bin/testreals $(CBF_PREFIX)/bin/testreals_old
	cp $(BIN)/testreals $(CBF_PREFIX)/bin/testreals
	-cp $(CBF_PREFIX)/bin/testflat $(CBF_PREFIX)/bin/testflat_old
	cp $(BIN)/testflat $(CBF_PREFIX)/bin/testflat
	-cp $(CBF_PREFIX)/bin/testflatpacked $(CBF_PREFIX)/bin/testflatpacked_old
	cp $(BIN)/testflatpacked $(CBF_PREFIX)/bin/testflatpacked
	-cp $(CBF_PREFIX)/bin/tiff2cbf $(CBF_PREFIX)/bin/tiff2cbf_old
	cp $(BIN)/tiff2cbf $(CBF_PREFIX)/bin/tiff2cbf
	-cp $(CBF_PREFIX)/bin/test_cbf_airy_disk $(CBF_PREFIX)/bin/test_cbf_airy_disk_old
	cp $(BIN)/test_cbf_airy_disk $(CBF_PREFIX)/bin/test_cbf_airy_disk
	-cp $(CBF_PREFIX)/bin/test_cbf_airy_disk $(CBF_PREFIX)/bin/test_cbf_airy_disk_old
	cp $(BIN)/test_cbf_airy_disk $(CBF_PREFIX)/bin/test_cbf_airy_disk
	-cp $(CBF_PREFIX)/bin/testhdf5 $(CBF_PREFIX)/bin/testhdf5_old
	cp $(BIN)/testhdf5 $(CBF_PREFIX)/bin/testhdf5
ifneq ($(CBF_USE_ULP),)
	-cp $(CBF_PREFIX)/bin/testulp $(CBF_PREFIX)/bin/testulp_old
	cp $(BIN)/testulp $(CBF_PREFIX)/bin/testulp
endif
	-cp $(CBF_PREFIX)/bin/batch_convert_minicbf.sh $(CBF_PREFIX)/bin/batch_convert_minicbf_old.sh
	cp $(EXAMPLES)/batch_convert_minicbf.sh $(CBF_PREFIX)/bin/batch_convert_minicbf.sh
ifneq ($(CBFLIB_DONT_USE_PYCIFRW),yes)
	cp $(SRC)/drel_lex.py $(CBF_PREFIX)/bin/drel_lex.py
	cp $(SRC)/drel_yacc.py $(CBF_PREFIX)/bin/drel_yacc.py
	cp $(SRC)/drelc.py $(CBF_PREFIX)/bin/drelc.py
	cp $(SRC)/drel_prep.py $(CBF_PREFIX)/bin/drel_prep.py
endif
	chmod -R 755 $(CBF_PREFIX)/include/cbflib
	-rm -rf $(CBF_PREFIX)/include/cbflib_old
	-cp -r $(CBF_PREFIX)/include/cbflib $(CBF_PREFIX)/include/cbflib_old
	-rm -rf $(CBF_PREFIX)/include/cbflib
	cp -r $(INCLUDE) $(CBF_PREFIX)/include/cbflib
	chmod 644 $(CBF_PREFIX)/lib/libcbf.a
	chmod 644 $(CBF_PREFIX)/lib/libimg.a
	chmod 644 $(CBF_PREFIX)/lib/libfcb.a
	chmod 755 $(CBF_PREFIX)/lib/libcbf.so
	chmod 755 $(CBF_PREFIX)/lib/libimg.so
	chmod 755 $(CBF_PREFIX)/lib/libfcb.so
	chmod 755 $(CBF_PREFIX)/bin/arvai_test
	chmod 755 $(CBF_PREFIX)/bin/cbf2nexus
	chmod 755 $(CBF_PREFIX)/bin/cbf_standardize_numbers
	chmod 755 $(CBF_PREFIX)/bin/cif2c
	chmod 755 $(CBF_PREFIX)/bin/cif2cbf
	chmod 755 $(CBF_PREFIX)/bin/convert_image
	chmod 755 $(CBF_PREFIX)/bin/convert_minicbf
	chmod 755 $(CBF_PREFIX)/bin/img2cif
	chmod 755 $(CBF_PREFIX)/bin/makecbf
	chmod 755 $(CBF_PREFIX)/bin/minicbf2nexus
	chmod 755 $(CBF_PREFIX)/bin/nexus2cbf
	chmod 755 $(CBF_PREFIX)/bin/roi_peaksearch
	chmod 755 $(CBF_PREFIX)/bin/sequence_match
	chmod 755 $(CBF_PREFIX)/bin/testalloc
	chmod 755 $(CBF_PREFIX)/bin/testflat
	chmod 755 $(CBF_PREFIX)/bin/testflatpacked
	chmod 755 $(CBF_PREFIX)/bin/testhdf5
	chmod 755 $(CBF_PREFIX)/bin/testreals
ifneq ($(CBF_USE_ULP),)
	chmod 755 $(CBF_PREFIX)/bin/testulp
endif
	chmod 755 $(CBF_PREFIX)/bin/tiff2cbf
	chmod 755 $(CBF_PREFIX)/bin/test_cbf_airy_disk
	chmod 755 $(CBF_PREFIX)/bin/batch_convert_minicbf.sh
	chmod 644 $(CBF_PREFIX)/include/cbflib/*.h
	
ifneq ($(CBFLIB_DONT_USE_PYCIFRW),yes)
#
# PyCifRW
#
build_pycifrw:	$(M4)/Makefile.m4
	touch build_pycifrw
$(PYCIFRW):	build_pycifrw
	-rm -rf $(PYCIFRW)
	-rm -rf $(PYCIFRW).tar.gz
	$(DOWNLOAD) $(PYCIFRWURL)
	tar -xvf $(PYCIFRW).tar.gz
	-rm $(PYCIFRW).tar.gz
	(cd $(PYCIFRW); PYTHONPATH=$(PYCIFRW_PREFIX)/lib/python; export PYTHONPATH; \
	mkdir -p $(PYCIFRW_PREFIX)/lib/python/site-packages; \
	$(PYTHON) setup.py install --home=$(PYCIFRW_PREFIX) )

#
# PLY
#
build_ply:	$(M4)/Makefile.m4
	touch build_ply
$(PLY):	build_ply
	-rm -rf $(PLY)
	-rm -rf $(PLY).tar.gz
	$(DOWNLOAD) $(PLYURL)
	tar -xvf $(PLY).tar.gz
	-rm $(PLY).tar.gz
	(cd $(PLY); PYTHONPATH=$(PYCIFRW_PREFIX)/lib/python; export PYTHONPATH; \
	mkdir -p $(PYCIFRW_PREFIX)/lib/python/site-packages; \
	$(PYTHON) setup.py install --home=$(PYCIFRW_PREFIX) )
endif

#
# REGEX
#

build_regex:    $(M4)/Makefile.m4
	touch build_regex
$(REGEX):   build_regex
	-rm -rf $(REGEX)
	-rm -rf $(REGEX).tar.gz
	$(DOWNLOAD) $(REGEX_URL)
	tar -xvf $(REGEX).tar.gz
	touch $(REGEX)
	-rm $(REGEX).tar.gz
	cp config.guess config.sub $(REGEX)
	(cd $(REGEX); \
	prefix=$(REGEX_PREFIX); export prefix; \
	./configure --prefix=$(REGEX_PREFIX); make install)
	@-cp $(REGEX_PREFIX)/include/pcreposix.h $(REGEX_PREFIX)/include/regex.h
$(REGEX)_INSTALL:   $(REGEX)
	-rm -rf $(REGEX)_install
	rsync -avz $(REGEX)/ $(REGEX)_install
	(cd $(REGEX)_install; prefix=$(CBF_PREFIX); export prefix; \
	make distclean; ./configure --prefix=$(CBF_PREFIX); make install )
	@-cp $(CBF_PREFIX)/include/pcreposix.h $(CBF_PREFIX)/include/regex.h

#
# TIFF
#
build_tiff:	$(M4)/Makefile.m4
	touch build_tiff
$(TIFF):	build_tiff config.guess config.sub
	-rm -rf $(TIFF)
	-rm -rf $(TIFF).tar.gz
	$(DOWNLOAD) $(TIFF_URL)
	tar -xvf $(TIFF).tar.gz
	touch $(TIFF)
	-rm $(TIFF).tar.gz
	cp config.guess config.sub $(TIFF)/config/
	(cd $(TIFF); prefix=$(TIFF_PREFIX); export prefix; \
	./configure --prefix=$(TIFF_PREFIX); make install)
$(TIFF)_INSTALL:    $(TIFF)
	-rm -rf $(TIFF)_install
	rsync -avz $(TIFF)/  $(TIFF)_install
	(cd $(TIFF)_install; make distclean; prefix=$(CBF_PREFIX); export prefix; \
	./configure --prefix=$(CBF_PREFIX); make install)


ifneq ($(CBFLIB_DONT_USE_LOCAL_HDF5),yes)
#
# HDF5
#

build_hdf5:	$(M4)/Makefile.m4
	touch build_hdf5
$(HDF5):	build_hdf5
	-rm -rf $(HDF5)
	-rm -rf $(HDF5).tar.gz
	$(DOWNLOAD) $(HDF5_URL)
	tar -xvf $(HDF5).tar.gz
	cp config.guess $(HDF5)/bin/config.guess
	cp config.sub $(HDF5)/bin/config.sub
	touch $(HDF5)
	-rm $(HDF5).tar.gz
	echo  "first level HDF5 install in "$(HDF5_PREFIX)
	(cd $(ROOT)/$(HDF5); \
	CFLAGS="$(CFLAGS)"; export CFLAGS; \
	mkdir -p hdf5; prefix=$(ROOT)/$(HDF5)/hdf5; export prefix; \
	./configure --prefix=$(ROOT)/$(HDF5)/hdf5 --enable-build-mode=production \
	--enable-trace --enable-fortran --enable-using-memchecker  ;\
	make install; \
	rsync -avz $(ROOT)/$(HDF5)/hdf5/bin/ $(HDF5_PREFIX)/bin; \
	rsync -avz $(ROOT)/$(HDF5)/hdf5/lib/ $(HDF5_PREFIX)/lib; \
	rsync -avz $(ROOT)/$(HDF5)/hdf5/include/ $(HDF5_PREFIX)/include; \
	cd $(HDF5_PREFIX)/bin; $(ROOT)/$(HDF5)/hdf5/bin/h5redeploy -force )
$(HDF5)_INSTALL:    $(HDF5)
	-rm -rf $(HDF5)_install
	echo "final HDF5 install in "$(CBF_PREFIX)
	rsync -avz $(ROOT)/$(HDF5)/hdf5/bin/ $(CBF_PREFIX)/bin; \
	rsync -avz $(ROOT)/$(HDF5)/hdf5/lib/ $(CBF_PREFIX)/lib; \
	rsync -avz $(ROOT)/$(HDF5)/hdf5/include/ $(CBF_PREFIX)/include; \
	cd $(CBF_PREFIX)/bin; $(ROOT)/$(HDF5)/hdf5/bin/h5redeploy -force
endif


ifneq ($(CBFLIB_DONT_USE_LZ4),yes)
#
# LZ4
#
build_lz4:	$(M4)/Makefile.m4 
	touch build_lz4
$(LZ4): $(HDF5)	build_lz4
	mkdir -p $(SOLIB)
	-rm -rf $(LZ4)
ifneq ($(MSYS2),yes)
	-rm -rf $(LZ4).tar.gz
	$(DOWNLOAD) $(LZ4_URL)
	tar -xvf $(LZ4).tar.gz
	-rm $(LZ4).tar.gz
	(cp $(LZ4include)/lz4.h $(INCLUDE); \
	$(CC) $(CFLAGS) $(SOCFLAGS) $(INCLUDES) $(WARNINGS) -c $(LZ4src)/lz4.c -o lz4.o; \
	$(CC) $(CFLAGS) $(SOCFLAGS) $(INCLUDES) $(WARNINGS) -c $(LZ4src)/h5zlz4.c -o h5zlz4.o; \
	$(CC) -shared lz4.o h5zlz4.o -o $(SOLIB)/libh5zlz4.so; \
	rm lz4.o h5zlz4.o)
else
	git clone $(LZ4_URL)
	(cd $(LZ4); mkdir build; cd build; cmake .. -G 'MSYS Makefiles' -DENABLE_LZ4_PLUGIN="yes"; make all; cp plugins/* $(SOLIB))
endif 
	touch $(LZ4)
endif


ifneq ($(CBFLIB_DONT_USE_BSHUF),yes)
#
# BSHUF
#
build_BSHUF:	$(M4)/Makefile.m4 
	touch build_BSHUF
$(BSHUF): $(HDF5)  build_BSHUF $(LZ4dep)
	mkdir -p $(SOLIB)
	-rm -rf $(BSHUF)
	-rm -rf $(BSHUF).tar.gz
	-rm -rf *.o
	$(DOWNLOAD) $(BSHUFURL)
	tar -xvf $(BSHUF).tar.gz
	-rm $(BSHUF).tar.gz
	(cp $(BSHUFinclude)/bitshuffle.h \
	    $(BSHUFinclude)/bitshuffle_core.h \
	    $(BSHUFinclude)/bitshuffle_internals.h \
	    $(BSHUFinclude)/bshuf_h5filter.h $(BSHUFinclude)/iochain.h   $(INCLUDE); \
	$(CC) $(CFLAGS) $(SOCFLAGS) $(INCLUDES) $(WARNINGS) -c $(BSHUFsrc)/bshuf_h5filter.c -o bshuf_h5filter.o; \
	$(CC) $(CFLAGS) $(SOCFLAGS) $(INCLUDES) $(WARNINGS) -c $(BSHUFsrc)/bitshuffle.c -o bitshuffle.o; \
	$(CC) $(CFLAGS) $(SOCFLAGS) $(INCLUDES) $(WARNINGS) -c $(BSHUFsrc)/bitshuffle_core.c -o bitshuffle_core.o; \
	$(CC) $(CFLAGS) $(SOCFLAGS) $(INCLUDES) $(WARNINGS) -c $(BSHUFsrc)/bshuf_h5plugin.c  -o bshuf_h5plugin.o; \
	$(CC) $(CFLAGS) $(SOCFLAGS) $(INCLUDES) $(WARNINGS) -c $(BSHUFsrc)/iochain.c  -o iochain.o; \
	$(CC) $(CFLAGS) $(SOCFLAGS) $(INCLUDES) $(WARNINGS) -c $(BSHUFsrc)/../lz4/lz4.c  -o lz4.o; \
	$(CC) -shared bshuf_h5filter.o bitshuffle.o bitshuffle_core.o iochain.o lz4.o $(HDF5SOLIBS_LOCAL) $(HDF5SOLIBS_SYSTEM)\
	    -o $(SOLIB)/libh5zbshuf.so; \
	$(CC) -shared bshuf_h5filter.o bitshuffle.o bitshuffle_core.o lz4.o bshuf_h5plugin.o iochain.o \
	    $(HDF5SOLIBS_LOCAL) \
	    $(HDF5SOLIBS_SYSTEM) -o $(SOLIB)/$(BSHUFFILTER).so; \
	rm bshuf_h5filter.o bitshuffle.o lz4.o iochain.o bshuf_h5plugin.o)
	touch $(BSHUF)
endif


#
# Directories
#
$(CBF_PREFIX):
	mkdir -p $(CBF_PREFIX)

$(CBF_PREFIX)/lib:  $(CBF_PREFIX)
	mkdir -p $(CBF_PREFIX)/lib

$(CBF_PREFIX)/bin:  $(CBF_PREFIX)
	mkdir -p $(CBF_PREFIX)/bin

$(CBF_PREFIX)/include:  $(CBF_PREFIX)
	mkdir -p $(CBF_PREFIX)/include
	
$(CBF_PREFIX)/include/cbflib: $(CBF_PREFIX)/include
	mkdir -p $(CBF_PREFIX)/include/cbflib



$(LIB):
	mkdir -p $@

$(BIN):
	mkdir -p $@

$(SOLIB):
	mkdir -p $@

$(JCBF):
	mkdir -p $@

$(MINICBF_TESTS):
	mkdir -p $@

#
# Parser
#
$(SRC)/cbf_stx.c: $(SRC)/cbf.stx.y
	bison $(SRC)/cbf.stx.y -o $(SRC)/cbf.stx.tab.c -d
	mv $(SRC)/cbf.stx.tab.c $(SRC)/cbf_stx.c
	mv $(SRC)/cbf.stx.tab.h $(INCLUDE)/cbf_stx.h

#
# CBF library
#
$(LIB)/libcbf.a: $(SOURCE) $(HEADERS) $(COMMONDEP) $(HDF5) $(LZ4DEPS) $(BSHUFDEPS) $(REGEXDEPS)
	-rm -f $@
	-rm -f *.o
	mkdir -p $(LIB)
	$(CC) $(CFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) \
	-DCBF_FILTER_STATIC $(LZ4FLAG) $(BSHUFFLAG)  $(PYCIFRWFLAG) $(INCLUDES) $(WARNINGS) -c $(SOURCE)
ifneq ($(CBFLIB_DONT_USE_LZ4),yes)
ifneq ($(MSYS2),yes)
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) -DCBF_FILTER_STATIC -c $(LZ4src)/h5zlz4.c -o h5zlz4.o
else
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) -DCBF_FILTER_STATIC -c $(LZ4)/LZ4/src/H5Zlz4.c -o h5zlz4.o
endif
endif
ifneq ($(CBFLIB_DONT_USE_BSHUF),yes)
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) -DCBF_FILTER_STATIC -c $(BSHUFsrc)/bitshuffle.c  -o bitshuffle.o
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) -DCBF_FILTER_STATIC -c $(BSHUFsrc)/bitshuffle_core.c  -o bitshuffle_core.o
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) -DCBF_FILTER_STATIC -c $(BSHUFsrc)/bshuf_h5filter.c  -o bshuf_h5filter.o
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) -DCBF_FILTER_STATIC -c $(BSHUFsrc)/iochain.c  -o iochain.o
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) -DCBF_FILTER_STATIC -c $(BSHUFsrc)/../lz4/lz4.c  -o lz4.o
endif
	$(AR) cr $@ *.o
ifneq ($(RANLIB),)
	$(RANLIB) $@
endif
	-rm -f *.o

$(SOLIB)/libcbf.so: $(SOURCE) $(HEADERS) $(COMMONDEP)  $(HDF5) $(LZ4DEPS) $(BSHUFDEPS)
	-rm -f $@
	-rm -f *.o
	mkdir -p $(SOLIB)
	$(CC) $(CFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(LZ4FLAG) $(BSHUFFLAG) $(PYCIFRWFLAG) $(SOCFLAGS) $(INCLUDES) $(WARNINGS) -c $(SOURCE)
ifneq ($(CBFLIB_DONT_USE_LZ4),yes)
ifneq ($(MSYS2),yes)
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) $(SOCFLAGS) -DCBF_FILTER_STATIC -c $(LZ4src)/h5zlz4.c -o h5zlz4.o
else
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) $(SOCFLAGS) -DCBF_FILTER_STATIC -c $(LZ4)/LZ4/src/H5Zlz4.c -o h5zlz4.o
endif
endif
ifneq ($(CBFLIB_DONT_USE_BSHUF),yes)
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) $(SOCFLAGS) -DCBF_FILTER_STATIC -c $(BSHUFsrc)/bitshuffle.c -o bitshuffle..o
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) $(SOCFLAGS) -DCBF_FILTER_STATIC -c $(BSHUFsrc)/bitshuffle_core.c  -o bitshuffle_core.o
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) $(SOCFLAGS) -DCBF_FILTER_STATIC -c $(BSHUFsrc)/iochain.c -o iochain.o
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) $(SOCFLAGS) -DCBF_FILTER_STATIC -c $(BSHUFsrc)/bshuf_h5filter.c -o bshuf_h5filter.o
	$(CC) $(CFLAGS) $(INCLUDES) $(WARNINGS) $(SOCFLAGS) -DCBF_FILTER_STATIC -c $(BSHUFsrc)/../lz4/lz4.c -o lz4.o
endif

	$(CC) -o $@ *.o $(SOLDFLAGS) $(EXTRALIBS) $(REGEX_LIBS) $(HDF5SOLIBS_LOCAL) $(HDF5SOLIBS_SYSTEM)
	-rm -f *.o

#
# IMG library
#
$(LIB)/libimg.a: $(SRC)/img.c $(HEADERS) $(COMMONDEP)
	mkdir -p $(LIB)
	$(CC) $(CFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) -c $(SRC)/img.c
	$(AR) cr $@ img.o
ifneq ($(RANLIB),)
	$(RANLIB) $@
endif
	rm img.o
	
$(SOLIB)/libimg.so: $(SOURCE) $(HEADERS) $(COMMONDEP)
	-rm -f $@
	mkdir -p $(SOLIB)
	$(CC) $(CFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(SOCFLAGS) $(INCLUDES) $(WARNINGS) -c $(SRC)/img.c
	$(CC) -o $@ img.o $(SOLDFLAGS)
	rm img.o

#
# CBF and IMG libraries
#
CBF_IMG_LIBS:  $(LIB)/libcbf.a $(LIB)/libimg.a 	


#
# FCB library
#
$(LIB)/libfcb.a: $(F90SOURCE) $(COMMONDEP) $(HDF5)
	mkdir -p $(LIB)
ifneq ($(F90C),)
	$(F90C) $(F90FLAGS) -c $(F90SOURCE)
	$(AR) cr $@ *.o
ifneq ($(RANLIB),)
	$(RANLIB) $@
endif
	rm *.o
else
	echo "Define F90C to build $(LIB)/libfcb.a"
endif

$(SOLIB)/libfcb.so: $(F90SOURCE) $(HEADERS) $(COMMONDEP) $(SOLIB)
ifneq ($(F90C),)
	-rm -f $@
	mkdir -p $(SOLIB)
	$(F90C) $(F90FLAGS) $(SOCFLAGS) $(INCLUDES) $(WARNINGS) -c $(F90SOURCE)
	$(F90C) $(F90FLAGS) -o $@ *.o $(SOLDFLAGS)
	rm *.o
else
	echo "Define F90C to build $(SOLIB)/libfcb.so"
endif


#
# Python bindings
#
$(PYCBF)/_pycbf.$(PYCBFEXT): $(PYCBF)  shared \
	$(PYCBF)/$(SETUP_PY)     \
	$(PYCBF)/pycbf.i		 \
	$(PYCBF)/cbfhandlewrappers.i   \
	$(PYCBF)/cbfdetectorwrappers.i \
	$(PYCBF)/cbfgenericwrappers.i  \
	$(PYCBF)/cbfgoniometerwrappers.i
	-cp $(SOLIB)/*.so $(LIB)
	(cd $(PYCBF); $(PYTHON) $(SETUP_PY) build $(PYCBFBOPT); cp build/lib*/_pycbf.$(PYCBFEXT) .) 

$(PYCBF)/pycbfinstall:
	(cd $(PYCBF); $(PYTHON) $(INSTALLSETUP_PY) install $(PYCBFIOPT) --prefix=$(CBF_PREFIX))

$(PYCBF)/pycbfuserinstall:
	(cd $(PYCBF); $(PYTHON) $(INSTALLSETUP_PY) install $(PYCBFIOPT) --user)

$(PYCBF)/setup.py: $(M4)/setup_py.m4
	(m4 -P -Dregexlib=$(REGEX_LIB) -Dregexlib2=$(REGEX_LIB2) \
	   -Dregexlibdir=$(REGEX_LIBDIR) -Dhdf5_prefix=$(HDF5_PREFIX) \
	   $(M4)/setup_py.m4 > $@)

$(PYCBF)/setup_MINGW.py: m4/setup_py.m4
	   (m4 -P -Dregexlib=$(REGEX_LIB) -Dregexlib2=$(REGEX_LIB2) \
	   -Dregexlibdir=$(REGEX_LIBDIR) -Dhdf5_prefix=$(HDF5_PREFIX) \
	   $(M4)/setup_py.m4 > $@)

$(LIB)/_pycbf.$(PYCBFEXT): $(PYCBF)/_pycbf.$(PYCBFEXT)
	mkdir -p $(LIB)
	cp $(PYCBF)/_pycbf.$(PYCBFEXT) $(LIB)/_pycbf.$(PYCBFEXT)
	
$(PYCBF)/pycbf.pdf: $(PYCBF)/pycbf.w
	(cd $(PYCBF); \
	$(NUWEB) pycbf; \
	latex pycbf; \
	$(NUWEB) pycbf; \
	latex pycbf; \
	dvipdfm pycbf )
	
$(PYCBF)/CBFlib.txt: $(DOC)/CBFlib.html
	links -dump $(DOC)/CBFlib.html > $(PYCBF)/CBFlib.txt

$(PYCBF)/cbfhandlewrappers.i   \
$(PYCBF)/cbfdetectorwrappers.i \
$(PYCBF)/cbfgenericwrappers.i  \
$(PYCBF)/cbfgoniometerwrappers.i:  $(PYCBF)/CBFlib.txt $(PYCBF)/make_pycbf.py
	(cd $(PYCBF);  $(PYTHON) make_pycbf.py; $(PYSWIG) pycbf.i; $(PYTHON) setup.py build)


#
# Java bindings
#
$(JCBF)/cbflib-$(VERSION).jar: $(JCBF) $(SRC)/jcbf.i
	$(JSWIG) -I$(INCLUDE) -package org.iucr.cbflib -outdir $(JCBF) -o $(JCBF)/jcbf_wrap.c $(SRC)/jcbf.i
	$(JAVAC) -d . $(JCBF)/*.java
	$(JAR) cf $@ org

$(SOLIB)/libcbf_wrap.so: $(JCBF)/cbflib-$(VERSION).jar $(SOLIB)/libcbf.so
	mkdir -p $(SOLIB)
	$(CC) $(CFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(SOCFLAGS) $(INCLUDES) $(WARNINGS) $(JAVAINCLUDES) -c $(JCBF)/jcbf_wrap.c
	$(CC) -o $@ jcbf_wrap.o $(SOLDFLAGS) -L$(SOLIB) -lcbf $(REGEX_LIBS)
	rm jcbf_wrap.o

#
# F90SOURCE
#
$(SRC)/fcb_exit_binary.f90: $(M4)/fcb_exit_binary.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) fcb_exit_binary.m4) > $(SRC)/fcb_exit_binary.f90
$(SRC)/fcb_next_binary.f90: $(M4)/fcb_next_binary.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) fcb_next_binary.m4) > $(SRC)/fcb_next_binary.f90
$(SRC)/fcb_open_cifin.f90: $(M4)/fcb_open_cifin.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) fcb_open_cifin.m4)  > $(SRC)/fcb_open_cifin.f90
$(SRC)/fcb_packed.f90: $(M4)/fcb_packed.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) fcb_packed.m4)      > $(SRC)/fcb_packed.f90
$(SRC)/fcb_read_bits.f90: $(M4)/fcb_read_bits.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) fcb_read_bits.m4)   > $(SRC)/fcb_read_bits.f90
$(SRC)/fcb_read_image.f90: $(M4)/fcb_read_image.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) fcb_read_image.m4)  > $(SRC)/fcb_read_image.f90
$(SRC)/fcb_read_xds_i2.f90: $(M4)/fcb_read_xds_i2.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) fcb_read_xds_i2.m4) > $(SRC)/fcb_read_xds_i2.f90
$(EXAMPLES)/test_fcb_read_image.f90: $(M4)/test_fcb_read_image.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) test_fcb_read_image.m4) > $(EXAMPLES)/test_fcb_read_image.f90
$(EXAMPLES)/test_xds_binary.f90: $(M4)/test_xds_binary.m4 $(M4)/fcblib_defines.m4
	(cd $(M4); m4 -P $(M4FLAGS) test_xds_binary.m4) > $(EXAMPLES)/test_xds_binary.f90

#
# convert_image example program
#
$(BIN)/convert_image: $(LIB)/libcbf.a $(EXAMPLES)/convert_image.c $(SRC)/img.c \
	$(GOPTLIB)	$(GOPTINC)
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/convert_image.c $(SRC)/img.c $(GOPTLIB) -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -o $@
#
# convert_minicbf example program
#
$(BIN)/convert_minicbf: $(LIB)/libcbf.a $(EXAMPLES)/convert_minicbf.c \
	$(GOPTLIB)	$(GOPTINC) $(EXAMPLES)/batch_convert_minicbf.sh
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/convert_minicbf.c $(GOPTLIB) -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -o $@
	chmod 755 $(EXAMPLES)/batch_convert_minicbf.sh

#
# makecbf example program
#
$(BIN)/makecbf: $(LIB)/libcbf.a $(EXAMPLES)/makecbf.c $(LIB)/libimg.a
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/makecbf.c  -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -limg -o $@


#
# adscimg2cbf example program
#
$(BIN)/adscimg2cbf: $(LIB)/libcbf.a $(EXAMPLES)/adscimg2cbf.c $(EXAMPLES)/adscimg2cbf_sub.c
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) -D_SVID_SOURCE $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/adscimg2cbf.c $(EXAMPLES)/adscimg2cbf_sub.c  -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -o $@

#
# cbf2adscimg example program
#
$(BIN)/cbf2adscimg: $(LIB)/libcbf.a $(EXAMPLES)/cbf2adscimg.c $(EXAMPLES)/cbf2adscimg_sub.c
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) -D_SVID_SOURCE $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/cbf2adscimg.c $(EXAMPLES)/cbf2adscimg_sub.c  -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -o $@

#
# cbf_standardize_numbers example program
#
$(BIN)/cbf_standardize_numbers: $(EXAMPLES)/cbf_standardize_numbers.c $(EXAMPLES)/cbf_standardize_numbers.h
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) -D_SVID_SOURCE $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/cbf_standardize_numbers.c $(SRC_FGETLN)  $(REGEX_LIBS_STATIC) $(EXTRALIBS) -o $@

#
# changtestcompression example program
#
$(BIN)/changtestcompression: $(LIB)/libcbf.a $(EXAMPLES)/changtestcompression.c
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/changtestcompression.c -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -o $@

#
# img2cif example program
#
$(BIN)/img2cif: $(LIB)/libcbf.a $(EXAMPLES)/img2cif.c $(LIB)/libimg.a \
	$(GOPTLIB) 	$(GOTPINC)
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/img2cif.c $(GOPTLIB) -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -lhdf5 -limg -o $@

#
# cif2cbf example program
#
$(BIN)/cif2cbf: $(LIB)/libcbf.a $(EXAMPLES)/cif2cbf.c $(LIB)/libimg.a \
	$(GOPTLIB) $(GOPTINC)
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/cif2cbf.c $(GOPTLIB) -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -lhdf5 -limg -o $@

#
# cbf2nexus example program
#
$(BIN)/cbf2nexus: $(LIB)/libcbf.a $(EXAMPLES)/cbf2nexus.c \
	$(GOPTLIB) $(GOPTINC) 
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/cbf2nexus.c $(GOPTLIB) -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) \
	-lhdf5 -limg -o $@

#
# minicbf2nexus example program
#
$(BIN)/minicbf2nexus: $(LIB)/libcbf.a $(EXAMPLES)/minicbf2nexus.c $(LIB)/libimg.a \
	$(GOPTLIB) $(GOPTINC) 
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/minicbf2nexus.c $(GOPTLIB) -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -lhdf5 -limg -o $@
	
#
# nexus2cbf example program
#
$(BIN)/nexus2cbf: $(LIB)/libcbf.a $(EXAMPLES)/nexus2cbf.c \
	$(GOPTLIB) $(GOPTINC) $(REGEX)
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/nexus2cbf.c $(GOPTLIB) -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM)  -lhdf5 -limg -o $@

#
# roi_peaksearch example program
#
$(BIN)/roi_peaksearch: $(LIB)/libcbf.a $(EXAMPLES)/roi_peaksearch.c \
	$(EXAMPLES)/dps_peaksearch.c  $(EXAMPLES)/dps_peaksearch.h $(GOPTLIB)	$(GOPTINC)
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/roi_peaksearch.c $(EXAMPLES)/dps_peaksearch.c $(GOPTLIB) -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM)  -limg -o $@


#
# dectris cbf_template_t program
#
$(BIN)/cbf_template_t: $(DECTRIS_EXAMPLES)/cbf_template_t.c \
	$(DECTRIS_EXAMPLES)/mx_cbf_t_extras.h \
	$(DECTRIS_EXAMPLES)/mx_parms.h
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) -I $(DECTRIS_EXAMPLES)  $(WARNINGS) \
	$(DECTRIS_EXAMPLES)/cbf_template_t.c -o $@

#
# testcell example program
#
$(BIN)/testcell: $(LIB)/libcbf.a $(EXAMPLES)/testcell.C
	mkdir -p $(BIN)
	$(C++) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/testcell.C -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -o $@

#
# cif2c example program
#
$(BIN)/cif2c: $(LIB)/libcbf.a $(EXAMPLES)/cif2c.c
	mkdir -p $(BIN)
	$(C++) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/cif2c.c -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -o $@

#
# sauter_test example program
#
$(BIN)/sauter_test: $(LIB)/libcbf.a $(EXAMPLES)/sauter_test.C
	mkdir -p $(BIN)
	$(C++) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/sauter_test.C -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -o $@

#
# sequence_match example program
#
$(BIN)/sequence_match: $(LIB)/libcbf.a $(EXAMPLES)/sequence_match.c $(LIB)/libimg.a \
	$(GOPTLIB)	$(GOPTINC)
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/sequence_match.c $(GOPTLIB) -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -limg -o $@

#
# tiff2cbf example program
#
$(BIN)/tiff2cbf: $(LIB)/libcbf.a $(EXAMPLES)/tiff2cbf.c \
	$(GOPTLIB)	$(GOPTINC) $(TIFF)
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	-I$(TIFF)/libtiff $(EXAMPLES)/tiff2cbf.c $(GOPTLIB) -L$(LIB) \
	-lcbf -L$(TIFF_PREFIX)/lib -ltiff $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -limg -o $@

#
# Andy Arvai's buffered read test program
#
$(BIN)/arvai_test: $(LIB)/libcbf.a $(EXAMPLES)/arvai_test.c $(LIB)/libimg.a \
	$(GOPTLIB)	$(GOPTINC)
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/arvai_test.c $(GOPTLIB) -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -limg -o $@

#
# testreals example program
#
$(BIN)/testreals: $(LIB)/libcbf.a $(EXAMPLES)/testreals.c
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/testreals.c -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -o $@

#
# testflat example program
#
$(BIN)/testflat: $(LIB)/libcbf.a $(EXAMPLES)/testflat.c
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/testflat.c -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -o $@
#
# testflatpacked example program
#
$(BIN)/testflatpacked: $(LIB)/libcbf.a $(EXAMPLES)/testflatpacked.c
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/testflatpacked.c -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -o $@

ifneq ($(F90C),)
#
# test_xds_binary example program
#
$(BIN)/test_xds_binary: $(LIB)/libfcb.a $(EXAMPLES)/test_xds_binary.f90
	mkdir -p $(BIN)
	$(F90C) $(F90FLAGS) $(F90LDFLAGS) $(EXAMPLES)/test_xds_binary.f90 \
	-L$(LIB) -lfcb -o $@

#
# test_fcb_read_image example program
#
$(BIN)/test_fcb_read_image: $(LIB)/libfcb.a $(EXAMPLES)/test_fcb_read_image.f90
	mkdir -p $(BIN)
	$(F90C) $(F90FLAGS) $(F90LDFLAGS) $(EXAMPLES)/test_fcb_read_image.f90 \
	-L$(LIB) -lfcb -o $@
endif

#
# testcbf (C)
#
$(BIN)/ctestcbf: $(EXAMPLES)/testcbf.c $(LIB)/libcbf.a
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	$(EXAMPLES)/testcbf.c -L$(LIB) \
	-lcbf $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) -o $@

#
# testcbf (Java)
#
$(BIN)/testcbf.class: $(EXAMPLES)/testcbf.java $(JCBF)/cbflib-$(VERSION).jar $(SOLIB)/libcbf_wrap.so
	mkdir -p $(BIN)
	$(JAVAC) -cp $(JCBF)/cbflib-$(VERSION).jar -d $(BIN) $(EXAMPLES)/testcbf.java
	
ifneq ($(CBF_USE_ULP),)
#
# testulp test program
#
$(BIN)/testulp: $(LIB)/libcbf.a $(EXAMPLES)/testulp.c $(EXAMPLES)/unittest.h
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) \
	  $(WARNINGS) $(EXAMPLES)/testulp.c -L$(LIB) $(LIB)/libcbf.a \
	  $(REGEX_LIBS_STATIC) $(EXTRALIBS) -o $@.tmp
	mv $@.tmp $@
endif

#
# testhdf5 test program
#
$(BIN)/testhdf5: $(LIB)/libcbf.a $(EXAMPLES)/testhdf5.c $(EXAMPLES)/unittest.h
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) \
	  $(WARNINGS) $(EXAMPLES)/testhdf5.c -L$(LIB) $(LIB)/libcbf.a \
	  $(REGEX_LIBS_STATIC) $(HDF5LIBS_LOCAL) $(EXTRALIBS) $(HDF5LIBS_SYSTEM) \
	  -o $@.tmp
	mv $@.tmp $@

#
# testalloc test program
#
$(BIN)/testalloc: $(LIB)/libcbf.a $(EXAMPLES)/testalloc.c $(EXAMPLES)/unittest.h
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) \
	  $(WARNINGS) $(EXAMPLES)/testalloc.c -L$(LIB) $(LIB)/libcbf.a \
	  $(REGEX_LIBS_STATIC) $(EXTRALIBS) -o $@.tmp
	mv $@.tmp $@
	
#
# test_cbf_airy_disk test program
#
$(BIN)/test_cbf_airy_disk: $(LIB)/libcbf.a $(EXAMPLES)/test_cbf_airy_disk.c
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) \
	  $(WARNINGS) $(EXAMPLES)/test_cbf_airy_disk.c -L$(LIB) $(LIB)/libcbf.a \
	  $(REGEX_LIBS_STATIC) $(EXTRALIBS) -o $@.tmp
	mv $@.tmp $@

#
# cbf_testxfelread: test program
#
$(BIN)/cbf_testxfelread: $(LIB)/libcbf.a $(EXAMPLES)/cbf_testxfelread.c $(EXAMPLES)/cbf_testxfelread.h
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(MISCFLAG) $(CBF_REGEXFLAG) $(INCLUDES) $(WARNINGS) \
	  $(EXAMPLES)/cbf_testxfelread.c -L$(LIB) $(LIB)/libcbf.a \
	  $(REGEX_LIBS_STATIC) $(EXTRALIBS) -o $@.tmp
	mv $@.tmp $@

#
# Data files for tests
#

$(DATADIRI):	$(M4)/Makefile.m4
	(cd ..; $(DOWNLOAD) $(DATAURLI))
	(cd ..; tar -zxvf CBFlib_$(VERSION)_Data_Files_Input.tar.gz)
	touch $(DATADIRI)
	-(cd ..; rm CBFlib_$(VERSION)_Data_Files_Input.tar.gz)

$(DATADIRO):	$(M4)/Makefile.m4
	(cd ..; $(DOWNLOAD) $(DATAURLO))
	(cd ..; tar -zxvf CBFlib_$(VERSION)_Data_Files_Output.tar.gz)
	touch $(DATADIRO)
	-(cd ..; rm CBFlib_$(VERSION)_Data_Files_Output.tar.gz)

$(DATADIRS):	$(M4)/Makefile.m4
	(cd ..; $(DOWNLOAD) $(DATAURLS))
	(cd ..; tar -zxvf CBFlib_$(VERSION)_Data_Files_Output_Sigs_Only.tar.gz)
	touch $(DATADIRS)
	-(cd ..; rm CBFlib_$(VERSION)_Data_Files_Output_Sigs_Only.tar.gz)


# Input Data Files 

TESTINPUT_BASIC =  example.mar2300
DATADIRI_INPUT_BASIC = $(DATADIRI)/example.mar2300


TESTINPUT_EXTRA =  \
	1191_00005.cbf \
	9ins.cif \
	hit-20140306005258847.cbf \
	insulin_pilatus6m.cbf \
	mb_LP_1_001.img \
	testflatin.cbf \
	testflatpackedin.cbf \
	testrealin.cbf \
	thaumatin_die_M1S5_1_0005_2.cbf \
	X4_lots_M1S4_1_0001.cbf \
	X4_lots_M1S4_1_0002.cbf \
	X4_lots_M1S4_1_0003.cbf \
	X4_lots_M1S4_1_0004.cbf \
	X4_lots_M1S4_1_0005.cbf \
	XRD1621.tif



DATADIRI_INPUT_EXTRA = \
	$(DATADIRI)/1191_00005.cbf \
	$(DATADIRI)/9ins.cif \
	$(DATADIRI)/hit-20140306005258847.cbf \
	$(DATADIRI)/insulin_pilatus6m.cbf \
	$(DATADIRI)/mb_LP_1_001.img \
	$(DATADIRI)/testflatin.cbf \
	$(DATADIRI)/testflatpackedin.cbf \
	$(DATADIRI)/testrealin.cbf \
	$(DATADIRI)/thaumatin_die_M1S5_1_0005_2.cbf \
	$(DATADIRI)/X4_lots_M1S4_1_0001.cbf \
	$(DATADIRI)/X4_lots_M1S4_1_0002.cbf \
	$(DATADIRI)/X4_lots_M1S4_1_0003.cbf \
	$(DATADIRI)/X4_lots_M1S4_1_0004.cbf \
	$(DATADIRI)/X4_lots_M1S4_1_0005.cbf \
	$(DATADIRI)/XRD1621.tif


# Output Data Files

TESTOUTPUT =  adscconverted_flat_orig.cbf \
	adscconverted_orig.cbf converted_flat_orig.cbf converted_orig.cbf \
	insulin_pilatus6mconverted_orig.cbf.h5.cbf \
	insulin_pilatus6mconverted_orig.cbf.h5 \
	insulin_pilatus6mconverted_v2_orig.cbf \
	mb_LP_1_001_orig.cbf testcell_orig.prt \
	test_xds_bin_testflatout_orig.out \
	test_xds_bin_testflatpackedout_orig.out test_fcb_read_testflatout_orig.out \
	test_fcb_read_testflatpackedout_orig.out \
	XRD1621_orig.cbf XRD1621_I4encbC100_orig.cbf \
	minicbf_orig.h5
NEWTESTOUTPUT = adscconverted_flat.cbf \
	adscconverted.cbf converted_flat.cbf converted.cbf \
	insulin_pilatus6mconverted.cbf \
	insulin_pilatus6mconverted.cbf.h5 \
	insulin_pilatus6mconverted.cbf.h5.cbf \
	insulin_pilatus6mconverted_v2.cbf \
	mb_LP_1_001.cbf testcell.prt \
	test_xds_bin_testflatout.out \
	test_xds_bin_testflatpackedout.out test_fcb_read_testflatout.out \
	test_fcb_read_testflatpackedout.out \
	XRD1621.cbf XRD1621_I4encbC100.cbf \
	$(MINICBF_TEST)/minicbf.h5
DATADIRO_OUTPUT =  $(DATADIRO)/adscconverted_flat_orig.cbf \
	$(DATADIRO)/adscconverted_orig.cbf \
	$(DATADIRO)/converted_flat_orig.cbf \
	$(DATADIRO)/converted_orig.cbf \
	$(DATADIRO)/insulin_pilatus6mconverted_orig.cbf.h5.cbf \
	$(DATADIRO)/insulin_pilatus6mconverted_orig.cbf.h5 \
	$(DATADIRO)/insulin_pilatus6mconverted_v2_orig.cbf \
	$(DATADIRO)/mb_LP_1_001_orig.cbf \
	$(DATADIRO)/testcell_orig.prt \
	$(DATADIRO)/test_xds_bin_testflatout_orig.out \
	$(DATADIRO)/test_xds_bin_testflatpackedout_orig.out \
	$(DATADIRO)/test_fcb_read_testflatout_orig.out \
	$(DATADIRO)/test_fcb_read_testflatpackedout_orig.out \
	$(DATADIRO)/XRD1621_orig.cbf \
	$(DATADIRO)/XRD1621_I4encbC100_orig.cbf \
	$(DATADIRO)/minicbf_orig.h5
DATADIRO_OUTPUT_SIGNATURES =  $(DATADIRO)/adscconverted_flat_orig.cbf$(SEXT) \
	$(DATADIRO)/adscconverted_orig.cbf$(SEXT) \
	$(DATADIRO)/converted_flat_orig.cbf$(SEXT) \
	$(DATADIRO)/converted_orig.cbf$(SEXT) \
	$(DATADIRO)/insulin_pilatus6mconverted_orig.cbf.h5.cbf$(SEXT) \
	$(DATADIRO)/insulin_pilatus6mconverted_orig.cbf.h5$(SEXT) \
	$(DATADIRO)/insulin_pilatus6mconverted_v2_orig.cbf$(SEXT) \
	$(DATADIRO)/mb_LP_1_001_orig.cbf$(SEXT) \
	$(DATADIRO)/testcell_orig.prt$(SEXT) \
	$(DATADIRO)/test_xds_bin_testflatout_orig.out$(SEXT) \
	$(DATADIRO)/test_xds_bin_testflatpackedout_orig.out$(SEXT) \
	$(DATADIRO)/test_fcb_read_testflatout_orig.out$(SEXT) \
	$(DATADIRO)/test_fcb_read_testflatpackedout_orig.out$(SEXT) \
	$(DATADIRO)/XRD1621_orig.cbf$(SEXT) \
	$(DATADIRO)/XRD1621_I4encbC100_orig.cbf$(SEXT) \
	$(DATADIRO)/minicbf_orig.h5$(SEXT)


	
# Output Data File Signatures

TESTOUTPUTSIGS = adscconverted_flat_orig.cbf$(SEXT) \
	adscconverted_orig.cbf$(SEXT) converted_flat_orig.cbf$(SEXT) converted_orig.cbf$(SEXT) \
	insulin_pilatus6mconverted_orig.cbf.h5$(SEXT) \
	insulin_pilatus6mconverted_orig.cbf.h5.cbf$(SEXT) \
	insulin_pilatus6mconverted_v2_orig.cbf$(SEXT) \
	mb_LP_1_001_orig.cbf$(SEXT) testcell_orig.prt$(SEXT) \
	test_xds_bin_testflatout_orig.out$(SEXT) \
	test_xds_bin_testflatpackedout_orig.out$(SEXT) test_fcb_read_testflatout_orig.out$(SEXT) \
	test_fcb_read_testflatpackedout_orig.out$(SEXT) \
	XRD1621_orig.cbf$(SEXT) \
	XRD1621_I4encbC100_orig.cbf$(SEXT) \
	minicbf_orig.h5$(SEXT)
DATADIRS_OUTPUT_SIGNATURES =  $(DATADIRS)/adscconverted_flat_orig.cbf$(SEXT) \
	$(DATADIRS)/adscconverted_orig.cbf$(SEXT) \
	$(DATADIRS)/converted_flat_orig.cbf$(SEXT) \
	$(DATADIRS)/converted_orig.cbf$(SEXT) \
	$(DATADIRS)/insulin_pilatus6mconverted_orig.cbf.h5$(SEXT) \
	$(DATADIRS)/insulin_pilatus6mconverted_orig.cbf.h5.cbf$(SEXT) \
	$(DATADIRS)/insulin_pilatus6mconverted_v2_orig.cbf$(SEXT) \
	$(DATADIRS)/mb_LP_1_001_orig.cbf$(SEXT) \
	$(DATADIRS)/testcell_orig.prt$(SEXT) \
	$(DATADIRS)/test_xds_bin_testflatout_orig.out$(SEXT) \
	$(DATADIRS)/test_xds_bin_testflatpackedout_orig.out$(SEXT) \
	$(DATADIRS)/test_fcb_read_testflatout_orig.out$(SEXT) \
	$(DATADIRS)/test_fcb_read_testflatpackedout_orig.out$(SEXT) \
	$(DATADIRS)/XRD1621_orig.cbf$(SEXT) \
	$(DATADIRS)/XRD1621_I4encbC100_orig.cbf$(SEXT) \
	$(DATADIRS)/minicbf_orig.h5$(SEXT)

# Fetch Input Data Files 

$(TESTINPUT_BASIC):	$(DATADIRI) $(DATADIRI_INPUT_BASIC)
	cp $(DATADIRI)/$@  $@
	cp $(DATADIRI)/$@$(SEXT)  $@$(SEXT)
	-$(SIGNATURE) < $@ | $(DIFF) - $@$(SEXT)

$(TESTINPUT_EXTRA):	$(DATADIRI) $(DATADIRI_INPUT_EXTRA)
	cp $(DATADIRI)/$@ $@
	cp $(DATADIRI)/$@$(SEXT)  $@$(SEXT)
	-$(SIGNATURE) < $@ | $(DIFF) - $@$(SEXT)


# Fetch Output Data Files and Signatures

$(TESTOUTPUT):	$(DATADIRO) $(DATADIRO_OUTPUT) $(DATADIRO_OUTPUT_SIGNATURES)
	cp $(DATADIRO)/$@  $@
	cp $(DATADIRO)/$@$(SEXT) $@$(SEXT)
	-$(SIGNATURE) < $@ | $(DIFF) - $@$(SEXT)

# Fetch Output Data File Signatures

$(TESTOUTPUTSIGS):	$(DATADIRS) $(DATADIRS_OUTPUT_SIGNATURES)
	cp $(DATADIRS)/$@ $@



#
# Tests
#


tests:			all $(LIB) $(BIN) symlinksdone basic extra dectristests pycbftests
tests_sigs_only:	$(LIB) $(BIN) symlinksdone basic extra_sigs_only
restore_output:		$(NEWTESTOUTPUT) $(DATADIRO) $(MINICBF_TEST)/minicbf.h5
	$(SIGNATURE) < adscconverted_flat.cbf > $(DATADIRO)/adscconverted_flat_orig.cbf$(SEXT)
	$(SIGNATURE) < adscconverted.cbf > $(DATADIRO)/adscconverted_orig.cbf$(SEXT)
	$(SIGNATURE) < converted_flat.cbf > $(DATADIRO)/converted_flat_orig.cbf$(SEXT)
	$(SIGNATURE) < converted.cbf > $(DATADIRO)/converted_orig.cbf$(SEXT)
	$(SIGNATURE) < insulin_pilatus6mconverted.cbf.h5 > $(DATADIRO)/insulin_pilatus6mconverted_orig.cbf.h5$(SEXT)
	$(SIGNATURE) < insulin_pilatus6mconverted.cbf.h5.cbf > $(DATADIRO)/insulin_pilatus6mconverted_orig.cbf.h5.cbf$(SEXT)
	$(SIGNATURE) < insulin_pilatus6mconverted_v2.cbf > $(DATADIRO)/insulin_pilatus6mconverted_v2_orig.cbf$(SEXT)
	$(SIGNATURE) < mb_LP_1_001.cbf$ > $(DATADIRO)/mb_LP_1_001_orig.cbf$(SEXT)
	$(SIGNATURE) < testcell.prt > $(DATADIRO)/testcell_orig.prt$(SEXT)
	$(SIGNATURE) < test_xds_bin_testflatout.out > $(DATADIRO)/test_xds_bin_testflatout_orig.out$(SEXT)
	$(SIGNATURE) < test_xds_bin_testflatpackedout.out > $(DATADIRO)/test_xds_bin_testflatpackedout_orig.out$(SEXT)
	$(SIGNATURE) < test_fcb_read_testflatout.out > $(DATADIRO)/test_fcb_read_testflatout_orig.out$(SEXT)
	$(SIGNATURE) < test_fcb_read_testflatpackedout.out > $(DATADIRO)/test_fcb_read_testflatpackedout_orig.out$(SEXT)
	$(SIGNATURE) < XRD1621.cbf > $(DATADIRO)/XRD1621_orig.cbf$(SEXT)
	$(SIGNATURE) < XRD1621_I4encbC100.cbf > $(DATADIRO)/XRD1621_I4encbC100_orig.cbf$(SEXT)
	$(SIGNATURE) < $(MINICBF_TEST)/minicbf.h5  > $(DATADIRO)/minicbf_orig.h5$(SEXT)
	cp adscconverted_flat.cbf $(DATADIRO)/adscconverted_flat_orig.cbf$
	cp adscconverted.cbf $(DATADIRO)/adscconverted_orig.cbf
	cp converted_flat.cbf $(DATADIRO)/converted_flat_orig.cbf
	cp converted.cbf $(DATADIRO)/converted_orig.cbf
	cp insulin_pilatus6mconverted.cbf.h5  $(DATADIRO)/insulin_pilatus6mconverted_orig.cbf.h5
	cp insulin_pilatus6mconverted.cbf.h5.cbf  $(DATADIRO)/insulin_pilatus6mconverted_orig.cbf.h5.cbf
	cp insulin_pilatus6mconverted_v2.cbf  $(DATADIRO)/insulin_pilatus6mconverted_v2_orig.cbf
	cp mb_LP_1_001.cbf$  $(DATADIRO)/mb_LP_1_001_orig.cbf
	cp testcell.prt  $(DATADIRO)/testcell_orig.prt
	cp test_xds_bin_testflatout.out $(DATADIRO)/test_xds_bin_testflatout_orig.out
	cp test_xds_bin_testflatpackedout.out $(DATADIRO)/test_xds_bin_testflatpackedout_orig.out
	cp test_fcb_read_testflatout.out $(DATADIRO)/test_fcb_read_testflatout_orig.out
	cp test_fcb_read_testflatpackedout.out $(DATADIRO)/test_fcb_read_testflatpackedout_orig.out
	cp XRD1621.cbf $(DATADIRO)/XRD1621_orig.cbf
	cp XRD1621_I4encbC100.cbf $(DATADIRO)/XRD1621_I4encbC100_orig.cbf
	cp $(MINICBF_TEST)/minicbf.h5 $(DATADIRO)/minicbf_orig.h5

restore_sigs_only:	$(NEWTESTOUTPUT) $(DATADIRS)
	$(SIGNATURE) < adscconverted_flat.cbf > $(DATADIRS)/adscconverted_flat_orig.cbf$(SEXT)
	$(SIGNATURE) < adscconverted.cbf > $(DATADIRS)/adscconverted_orig.cbf$(SEXT)
	$(SIGNATURE) < converted_flat.cbf > $(DATADIRS)/converted_flat_orig.cbf$(SEXT)
	$(SIGNATURE) < converted.cbf > $(DATADIRS)/converted_orig.cbf$(SEXT)
	$(SIGNATURE) < insulin_pilatus6mconverted.cbf.h5 > $(DATADIRS)/insulin_pilatus6mconverted_orig.cbf.h5$(SEXT)
	$(SIGNATURE) < insulin_pilatus6mconverted.cbf.h5.cbf > $(DATADIRS)/insulin_pilatus6mconverted_orig.cbf.h5.cbf$(SEXT)
	$(SIGNATURE) < insulin_pilatus6mconverted_v2.cbf > $(DATADIRS)/insulin_pilatus6mconverted_v2_orig.cbf$(SEXT)
	$(SIGNATURE) < mb_LP_1_001.cbf$ > $(DATADIRS)/mb_LP_1_001_orig.cbf$(SEXT)
	$(SIGNATURE) < testcell.prt > $(DATADIRS)/testcell_orig.prt$(SEXT)
	$(SIGNATURE) < test_xds_bin_testflatout.out > $(DATADIRS)/test_xds_bin_testflatout_orig.out$(SEXT)
	$(SIGNATURE) < test_xds_bin_testflatpackedout.out > $(DATADIRS)/test_xds_bin_testflatpackedout_orig.out$(SEXT)
	$(SIGNATURE) < test_fcb_read_testflatout.out > $(DATADIRS)/test_fcb_read_testflatout_orig.out$(SEXT)
	$(SIGNATURE) < test_fcb_read_testflatpackedout.out > $(DATADIRS)/test_fcb_read_testflatpackedout_orig.out$(SEXT)
	$(SIGNATURE) < XRD1621.cbf > $(DATADIRS)/XRD1621_orig.cbf$(SEXT)
	$(SIGNATURE) < XRD1621_I4encbC100.cbf > $(DATADIRS)/XRD1621_I4encbC100_orig.cbf$(SEXT)
	$(SIGNATURE) < $(MINICBF_TEST)/minicbf.h5 > $(DATADIRS)/minicbf_orig.h5$(SEXT)
restore_signatures:	restore_output restore_sigs_only
	
#
# Basic Tests
#

basic:	$(BIN)/makecbf $(BIN)/img2cif $(BIN)/cif2cbf $(TESTINPUT_BASIC)
	$(LDPREFIX)  $(BIN)/makecbf example.mar2300 makecbf.cbf
	$(LDPREFIX)  $(BIN)/img2cif -c flatpacked -m headers -d digest \
	-e base64  example.mar2300  img2cif_packed.cif
	$(LDPREFIX)  $(BIN)/img2cif -c canonical -m headers -d digest \
	-e base64  example.mar2300  img2cif_canonical.cif
	$(LDPREFIX)  $(BIN)/img2cif -c flatpacked -m headers -d digest \
	-e none  example.mar2300  img2cif_packed.cbf
	$(LDPREFIX)  $(BIN)/img2cif -c canonical -m headers -d digest \
	-e none  example.mar2300  img2cif_canonical.cbf
	$(LDPREFIX)  $(BIN)/cif2cbf -e none -c flatpacked \
	img2cif_canonical.cif cif2cbf_packed.cbf
	$(LDPREFIX)  $(BIN)/cif2cbf -e none -c canonical \
	img2cif_packed.cif cif2cbf_canonical.cbf
	-cmp cif2cbf_packed.cbf    makecbf.cbf
	-cmp cif2cbf_packed.cbf    img2cif_packed.cbf
	-cmp cif2cbf_canonical.cbf img2cif_canonical.cbf


#
# Extra Tests
#
$(MINICBF_TEST)/minicbf.h5:
	cd $(MINICBF_TEST); $(LDPREFIX)  $(TIME) $(BIN)/minicbf2nexus -c zlib \
	-C config $(HDF5REGISTER) -o minicbf.h5  ../X4_lots_M1S4_1_*.cbf
mb_LP_1_001.cbf:
	$(LDPREFIX) $(BIN)/adscimg2cbf --no_pad  --cbf_packed,flat mb_LP_1_001.img



ifneq ($(F90C),)
extra:	$(BIN)/convert_image $(BIN)/convert_minicbf $(BIN)/cif2cbf \
	$(BIN)/minicbf2nexus $(BIN)/cbf2nexus $(BIN)/nexus2cbf $(BIN)/testcell \
	$(BIN)/testreals $(BIN)/testflat $(BIN)/testflatpacked \
	$(BIN)/test_xds_binary $(BIN)/test_fcb_read_image $(BIN)/convert_minicbf \
	$(BIN)/sauter_test $(BIN)/adscimg2cbf $(BIN)/cbf2adscimg \
	$(BIN)/changtestcompression $(BIN)/tiff2cbf \
	$(BIN)/testhdf5 $(BIN)/testalloc \
	$(BIN_TESTULP) \
	basic $(TESTINPUT_EXTRA) $(TESTOUTPUT) $(EXAMPLES)/batch_convert_minicbf.sh \
	$(TEMPLATES)/template_X4_lots_M1S4.cbf
else
extra:	$(BIN)/convert_image $(BIN)/convert_minicbf $(BIN)/cif2cbf \
	$(BIN)/minicbf2nexus $(BIN)/cbf2nexus $(BIN)/nexus2cbf $(BIN)/testcell \
	$(BIN)/testreals $(BIN)/testflat $(BIN)/testflatpacked \
	$(BIN)/convert_minicbf \
	$(BIN)/sauter_test $(BIN)/adscimg2cbf $(BIN)/cbf2adscimg \
	$(BIN)/testhdf5 $(BIN)/testalloc \
	$(BIN_TESTULP) \
	basic $(TESTINPUT_EXTRA) $(TESTOUTPUT) $(EXAMPLES)/batch_convert_minicbf.sh
endif
	$(LDPREFIX)  $(TIME) $(BIN)/cif2cbf -e hex -c none \
	makecbf.cbf cif2cbf_ehcn.cif
	$(LDPREFIX)  $(TIME) $(BIN)/cif2cbf -e none -c flatpacked \
	cif2cbf_ehcn.cif cif2cbf_encp.cbf; rm cif2cbf_ehcn.cif
	-cmp makecbf.cbf cif2cbf_encp.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/cif2cbf -i 9ins.cif -o 9ins.cbf
	-cmp 9ins.cif 9ins.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/convert_image -p $(TEMPLATES)/template_mar345_2300x2300.cbf -F example.mar2300 converted_flat.cbf
	-cmp converted_flat.cbf converted_flat_orig.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/convert_image -p $(TEMPLATES)/template_mar345_2300x2300.cbf example.mar2300 converted.cbf
	-cmp converted.cbf converted_orig.cbf
	-$(LDPREFIX)  $(TIME) $(BIN)/testcell < testcell.dat > testcell.prt
	-cmp testcell.prt testcell_orig.prt
	$(LDPREFIX)  $(TIME) $(BIN)/convert_image -p $(TEMPLATES)/template_adscquantum315_3072x3072.cbf -F -d adscquantum315 mb_LP_1_001.img adscconverted_flat.cbf
	-cmp adscconverted_flat.cbf adscconverted_flat_orig.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/convert_image -p $(TEMPLATES)/template_adscquantum315_3072x3072.cbf -d adscquantum315 mb_LP_1_001.img adscconverted.cbf
	-cmp adscconverted.cbf adscconverted_orig.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/adscimg2cbf --no_pad  --cbf_packed,flat mb_LP_1_001.img
	-cmp mb_LP_1_001.cbf mb_LP_1_001_orig.cbf
ifneq ($(CLEANTESTS),)
	mv mb_LP_1_001.cbf nmb_LP_1_001.cbf
else
	cp mb_LP_1_001.cbf nmb_LP_1_001.cbf
endif
	$(LDPREFIX)  $(TIME) $(BIN)/cbf2adscimg nmb_LP_1_001.cbf
	-cmp nmb_LP_1_001.img mb_LP_1_001.img
	rm nmb_LP_1_001.cbf
ifneq ($(CLEANTESTS),)
	rm nmb_LP_1_001.img
endif
	$(LDPREFIX)  $(TIME) $(BIN)/convert_minicbf -p $(TEMPLATES)/template_pilatus6m_2463x2527.cbf -d pilatus6m -v 1 insulin_pilatus6m.cbf insulin_pilatus6mconverted.cbf
	-cmp insulin_pilatus6mconverted.cbf insulin_pilatus6mconverted_rev_orig.cbf
	-$(LDPREFIX)  $(TIME) $(BIN)/convert_minicbf -p $(TEMPLATES)/template_pilatus6m_2463x2527.cbf -d pilatus6m insulin_pilatus6m.cbf insulin_pilatus6mconverted_v2.cbf
	-cmp insulin_pilatus6mconverted_v2.cbf insulin_pilatus6mconverted_v2_orig.cbf
	(CBF_CONVERT_MINICBF_PATH=$(BIN); export CBF_CONVERT_MINICBF_PATH; \
	     $(LDPREFIX) $(EXAMPLES)/batch_convert_minicbf.sh "." "minicbf_test" \
	    "X4_lots_M1S4_1_*.cbf"  $(TEMPLATES)/template_X4_lots_M1S4.cbf)
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 w -O $(HDF5REGISTER) -i insulin_pilatus6mconverted.cbf -o insulin_pilatus6mconverted.cbf.h5)
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 w $(HDF5REGISTER) -en -cI -i insulin_pilatus6mconverted.cbf -o insulin_pilatus6mconverted_encI.cbf.h5)
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 w $(HDF5REGISTER) -en -cp -i insulin_pilatus6mconverted.cbf -o insulin_pilatus6mconverted_encp.cbf.h5)
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 w $(HDF5REGISTER) -en -cb -i insulin_pilatus6mconverted.cbf -o insulin_pilatus6mconverted_encb.cbf.h5)
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 w $(HDF5REGISTER) -en -cc -i insulin_pilatus6mconverted.cbf -o insulin_pilatus6mconverted_encc.cbf.h5)
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 w $(HDF5REGISTER) -en -cz -i insulin_pilatus6mconverted.cbf -o insulin_pilatus6mconverted_encz.cbf.h5)
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 w $(HDF5REGISTER) -en -cl -i insulin_pilatus6mconverted.cbf -o insulin_pilatus6mconverted_encl.cbf.h5)
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 w $(HDF5REGISTER) -en -c2 -i insulin_pilatus6mconverted.cbf -o insulin_pilatus6mconverted_enc2.cbf.h5)
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(H5DUMP) insulin_pilatus6mconverted_orig.cbf.h5 | $(ALLBUTONE) > insulin_pilatus6mconverted_orig.cbf.h5.dump)
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(H5DUMP) insulin_pilatus6mconverted.cbf.h5 | $(ALLBUTONE)  > insulin_pilatus6mconverted.cbf.h5.dump)
	-$(DIFF) insulin_pilatus6mconverted_orig.cbf.h5.dump insulin_pilatus6mconverted.cbf.h5.dump
	-rm -f insulin_pilatus6mconverted_orig.cbf.h5.dump
	-rm -f insulin_pilatus6mconverted.cbf.h5.dump
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf  -eq -cI -i insulin_pilatus6mconverted_orig.cbf.h5.cbf -o insulin_pilatus6mconverted_orig.cbf.h5.eqcI.cbf)
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 rn $(HDF5REGISTER) -en -cp -i insulin_pilatus6mconverted.cbf.h5 -o insulin_pilatus6mconverted.cbf.h5.cbf; \
	 $(BIN)/cif2cbf  -eq -cI -i insulin_pilatus6mconverted.cbf.h5.cbf -o insulin_pilatus6mconverted.cbf.h5.eqcI.cbf)
	-cmp insulin_pilatus6mconverted.cbf.h5.eqcI.cbf insulin_pilatus6mconverted_orig.cbf.h5.eqcI.cbf
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 rn $(HDF5REGISTER) -en -cp -i insulin_pilatus6mconverted_encp.cbf.h5 -o insulin_pilatus6mconverted_encp.cbf.h5.cbf; \
	 $(BIN)/cif2cbf  -eq -cI -i insulin_pilatus6mconverted_encp.cbf.h5.cbf -o insulin_pilatus6mconverted_encp.cbf.h5.eqcI.cbf)
	-cmp insulin_pilatus6mconverted_encp.cbf.h5.eqcI.cbf insulin_pilatus6mconverted_orig.cbf.h5.eqcI.cbf
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 rn $(HDF5REGISTER) -en -cp -i insulin_pilatus6mconverted_encb.cbf.h5 -o insulin_pilatus6mconverted_encb.cbf.h5.cbf; \
	 $(BIN)/cif2cbf  -eq -cI -i insulin_pilatus6mconverted_encb.cbf.h5.cbf -o insulin_pilatus6mconverted_encp.cbf.h5.eqcI.cbf)
	-cmp insulin_pilatus6mconverted_encp.cbf.h5.eqcI.cbf insulin_pilatus6mconverted_orig.cbf.h5.eqcI.cbf
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 rn $(HDF5REGISTER) -en -cp -i insulin_pilatus6mconverted_encI.cbf.h5 -o insulin_pilatus6mconverted_encI.cbf.h5.cbf; \
	 $(BIN)/cif2cbf  -eq -cI -i insulin_pilatus6mconverted_encI.cbf.h5.cbf -o insulin_pilatus6mconverted_encI.cbf.h5.eqcI.cbf)
	-cmp insulin_pilatus6mconverted_encI.cbf.h5.eqcI.cbf insulin_pilatus6mconverted_orig.cbf.h5.eqcI.cbf
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 rn $(HDF5REGISTER) -en -cp -i insulin_pilatus6mconverted_encc.cbf.h5 -o insulin_pilatus6mconverted_encc.cbf.h5.cbf; \
	 $(BIN)/cif2cbf  -eq -cI -i insulin_pilatus6mconverted_encc.cbf.h5.cbf -o insulin_pilatus6mconverted_encc.cbf.h5.eqcI.cbf)
	-cmp insulin_pilatus6mconverted_encc.cbf.h5.eqcI.cbf insulin_pilatus6mconverted_orig.cbf.h5.eqcI.cbf
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 rn $(HDF5REGISTER) -en -cp -i insulin_pilatus6mconverted_encz.cbf.h5 -o insulin_pilatus6mconverted_encz.cbf.h5.cbf; \
	 $(BIN)/cif2cbf  -eq -cI -i insulin_pilatus6mconverted_encz.cbf.h5.cbf -o insulin_pilatus6mconverted_encz.cbf.h5.eqcI.cbf)
	-cmp insulin_pilatus6mconverted_encz.cbf.h5.eqcI.cbf insulin_pilatus6mconverted_orig.cbf.h5.eqcI.cbf
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 rn $(HDF5REGISTER) -en -cp -i insulin_pilatus6mconverted_encl.cbf.h5 -o insulin_pilatus6mconverted_encl.cbf.h5.cbf; \
	 $(BIN)/cif2cbf  -eq -cI -i insulin_pilatus6mconverted_encl.cbf.h5.cbf -o insulin_pilatus6mconverted_encl.cbf.h5.eqcI.cbf)
	-cmp insulin_pilatus6mconverted_encl.cbf.h5.eqcI.cbf insulin_pilatus6mconverted_orig.cbf.h5.eqcI.cbf
	-$(LDPREFIX)  (HDF5_PLUGIN_PATH=$(SOLIB); export HDF5_PLUGIN_PATH; \
	$(TIME) $(BIN)/cif2cbf -5 rn $(HDF5REGISTER) -en -cp -i insulin_pilatus6mconverted_enc2.cbf.h5 -o insulin_pilatus6mconverted_enc2.cbf.h5.cbf; \
	 $(BIN)/cif2cbf  -eq -cI -i insulin_pilatus6mconverted_enc2.cbf.h5.cbf -o insulin_pilatus6mconverted_enc2.cbf.h5.eqcI.cbf)
	-cmp insulin_pilatus6mconverted_enc2.cbf.h5.eqcI.cbf insulin_pilatus6mconverted_orig.cbf.h5.eqcI.cbf
	-rm -f insulin_pilatus6mconverted*.cbf.h5.eqcI.cbf
	$(LDPREFIX)  $(TINE) $(BIN)/test_cbf_airy_disk
	$(LDPREFIX)  $(TIME) $(BIN)/cbf_testxfelread
	$(LDPREFIX)  $(TIME) $(BIN)/testalloc
	$(LDPREFIX)  $(TIME) $(BIN)/testhdf5; rm -f testfile.h5
ifneq ($(CBF_USE_ULP),)
	$(LDPREFIX)  $(TIME) $(BIN)/testulp
endif
	$(LDPREFIX) cd $(MINICBF_TEST); $(TIME) $(BIN)/minicbf2nexus -c zlib \
	-C config $(HDF5REGISTER) -o minicbf.h5  ../X4_lots_M1S4_1_*.cbf
	$(LDPREFIX) cd $(MINICBF_TEST); $(TIME) $(H5DUMP) ../minicbf_orig.h5 | $(ALLBUTONE) > minicbf_original.dump
	$(LDPREFIX) cd $(MINICBF_TEST); $(TIME) $(H5DUMP) minicbf.h5 | $(ALLBUTONE) > minicbf.dump
	-cd $(MINICBF_TEST); $(DIFF) minicbf_original.dump minicbf.dump
	$(LDPREFIX) cd $(MINICBF_TEST); rm -f minicbf_original.dump
	$(LDPREFIX) cd $(MINICBF_TEST); rm -f minicbf.dump
	#cd $(MINICBF_TEST); rm -f minicbf.h5
	$(LDPREFIX) cd $(MINICBF_TEST); $(TIME) $(BIN)/cbf2nexus -c zlib \
	--list -o i19-1.h5 ../1191_00005.cbf
	$(LDPREFIX) cd $(MINICBF_TEST); $(TIME) $(BIN)/nexus2cbf \
	-o i19-1.cbf i19-1.h5
	$(LDPREFIX) cd $(MINICBF_TEST); $(TIME) $(BIN)/cbf2nexus -c zlib \
	--list -o i19-2.h5 i19-1.cbf
	$(LDPREFIX) cd $(MINICBF_TEST); $(TIME) $(BIN)/nexus2cbf \
	-o i19-2.cbf i19-2.h5
	$(LDPREFIX) cd $(MINICBF_TEST); $(TIME) $(H5DUMP) i19-1.h5 | $(ALLBUTONE) > i19-1.dump
	$(LDPREFIX) cd $(MINICBF_TEST); $(TIME) $(H5DUMP) i19-2.h5 | $(ALLBUTONE) > i19-2.dump
	-cd $(MINICBF_TEST); $(DIFF) i19-1.dump i19-2.dump
	-cd $(MINICBF_TEST); $(DIFF) i19-1.cbf i19-2.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/testreals
	-cmp testrealin.cbf testrealout.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/testflat
	-cmp testflatin.cbf testflatout.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/testflatpacked
	-cmp testflatpackedin.cbf testflatpackedout.cbf
ifneq ($(F90C),)
	$(LDPREFIX)  $(TIME) (echo testflatout.cbf | $(BIN)/test_xds_binary > test_xds_bin_testflatout.out)
	-$(DIFF) test_xds_bin_testflatout.out test_xds_bin_testflatout_orig.out
	$(LDPREFIX)  $(TIME) (echo testflatpackedout.cbf | $(BIN)/test_xds_binary > test_xds_bin_testflatpackedout.out)
	-$(DIFF) test_xds_bin_testflatpackedout.out test_xds_bin_testflatpackedout_orig.out
	$(LDPREFIX)  $(TIME) (echo testflatout.cbf | $(BIN)/test_fcb_read_image  > test_fcb_read_testflatout.out)
	-$(DIFF) test_fcb_read_testflatout.out test_fcb_read_testflatout_orig.out
	$(LDPREFIX)  $(TIME) (echo testflatpackedout.cbf | $(BIN)/test_fcb_read_image > test_fcb_read_testflatpackedout.out)
	-$(DIFF) test_fcb_read_testflatpackedout.out test_fcb_read_testflatpackedout_orig.out
endif
	$(LDPREFIX)  $(TIME) $(BIN)/sauter_test
	$(LDPREFIX)  $(TIME) $(BIN)/changtestcompression
	$(LDPREFIX)  $(TIME) (LD_LIBRARY_PATH=$(LIB);export LD_LIBRARY_PATH;$(BIN)/tiff2cbf XRD1621.tif XRD1621.cbf)
	-$(DIFF) XRD1621.cbf XRD1621_orig.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/cif2cbf -I 4 -C 100. -L 0. -e n -c b -i XRD1621.cbf -o XRD1621_I4encbC100.cbf
	-$(DIFF) XRD1621_I4encbC100.cbf XRD1621_I4encbC100_orig.cbf

ifneq ($(F90C),)
extra_sigs_only:	$(BIN)/convert_image $(BIN)/convert_minicbf $(BIN)/cif2cbf $(BIN)/testcell \
	$(BIN)/testreals $(BIN)/testflat $(BIN)/testflatpacked \
	$(BIN)/test_xds_binary $(BIN)/test_fcb_read_image $(BIN)/convert_minicbf \
	$(BIN)/sauter_test $(BIN)/adscimg2cbf \
	$(BIN)/cbf2adscimg \
	$(BIN)/changtestcompression $(BIN)/tiff2cbf\
	basic $(TESTINPUT_EXTRA) $(TESTOUTPUTSIGS)
else
extra_sigs_only:	$(BIN)/convert_image $(BIN)/convert_minicbf $(BIN)/cif2cbf $(BIN)/testcell \
	$(BIN)/testreals $(BIN)/testflat $(BIN)/testflatpacked \
	$(BIN)/convert_minicbf \
	$(BIN)/sauter_test $(BIN)/adscimg2cbf\
	$(BIN)/cbf2adscimg \
	$(BIN)/changtestcompression $(BIN)/tiff2cbf\
	basic $(TESTINPUT_EXTRA) $(TESTOUTPUTSIGS)
endif
	$(LDPREFIX)  $(TIME) $(BIN)/cif2cbf -e hex -c none \
	makecbf.cbf cif2cbf_ehcn.cif
	$(LDPREFIX)  $(TIME) $(BIN)/cif2cbf -e none -c flatpacked \
	cif2cbf_ehcn.cif cif2cbf_encp.cbf; rm cif2cbf_ehcn.cif
	-cmp makecbf.cbf cif2cbf_encp.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/cif2cbf -i 9ins.cif -o 9ins.cbf
	-cmp 9ins.cif 9ins.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/convert_image -F example.mar2300 converted_flat.cbf
	-$(SIGNATURE) < converted_flat.cbf | $(DIFF) - converted_flat_orig.cbf$(SEXT); rm converted_flat.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/convert_image example.mar2300 converted.cbf
	-$(SIGNATURE) < converted.cbf | $(DIFF) - converted_orig.cbf$(SEXT); rm converted.cbf
	-$(LDPREFIX)  $(TIME) $(BIN)/testcell < testcell.dat | \
	$(SIGNATURE) | $(DIFF) - testcell_orig.prt$(SEXT)
	$(LDPREFIX)  $(TIME) $(BIN)/convert_image -F -d adscquantum315 mb_LP_1_001.img adscconverted_flat.cbf
	-$(SIGNATURE) < adscconverted_flat.cbf | $(DIFF) - adscconverted_flat_orig.cbf$(SEXT)
	$(LDPREFIX)  $(TIME) $(BIN)/convert_image -d adscquantum315 mb_LP_1_001.img adscconverted.cbf
	-$(SIGNATURE) < adscconverted.cbf | $(DIFF) - adscconverted_orig.cbf$(SEXT); rm adscconverted.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/adscimg2cbf  --no_pad --cbf_packed,flat mb_LP_1_001.img
	-$(SIGNATURE) < mb_LP_1_001.cbf | $(DIFF) - mb_LP_1_001_orig.cbf$(SEXT)
	mv mb_LP_1_001.cbf nmb_LP_1_001.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/cbf2adscimg nmb_LP_1_001.cbf
	-cmp nmb_LP_1_001.img mb_LP_1_001.img
	rm nmb_LP_1_001.cbf
	rm nmb_LP_1_001.img
	$(LDPREFIX)  $(TIME) $(BIN)/convert_minicbf -d pilatus6m -v 1 insulin_pilatus6m.cbf insulin_pilatus6mconverted.cbf
	-$(SIGNATURE) < insulin_pilatus6mconverted.cbf | $(DIFF) - insulin_pilatus6mconverted_rev_orig.cbf$(SEXT); rm insulin_pilatus6mconverted.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/convert_minicbf -d pilatus6m insulin_pilatus6m.cbf insulin_pilatus6mconverted_v2.cbf
	-$(SIGNATURE) < insulin_pilatus6mconverted_v2.cbf | $(DIFF) - insulin_pilatus6mconverted_v2_orig.cbf$(SEXT); rm insulin_pilatus6mconverted_v2.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/testreals
	-cmp testrealin.cbf testrealout.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/testflat
	-cmp testflatin.cbf testflatout.cbf
	$(LDPREFIX)  $(TIME) $(BIN)/testflatpacked
	-cmp testflatpackedin.cbf testflatpackedout.cbf
ifneq ($(F90C),)
	$(LDPREFIX)  echo testflatout.cbf | $(TIME) $(BIN)/test_xds_binary | \
	$(SIGNATURE) | $(DIFF) - test_xds_bin_testflatout_orig.out$(SEXT)
	$(LDPREFIX)  echo testflatpackedout.cbf | $(TIME) $(BIN)/test_xds_binary | \
	$(SIGNATURE) | $(DIFF) - test_xds_bin_testflatpackedout_orig.out$(SEXT)
	$(LDPREFIX)  echo testflatout.cbf | $(TIME) $(BIN)/test_fcb_read_image | \
	$(SIGNATURE) | $(DIFF) - test_fcb_read_testflatout_orig.out$(SEXT)
	$(LDPREFIX)  echo testflatpackedout.cbf | $(TIME) $(BIN)/test_fcb_read_image | \
	$(SIGNATURE) | $(DIFF) - test_fcb_read_testflatpackedout_orig.out$(SEXT)
endif
	$(LDPREFIX)  $(TIME) $(BIN)/sauter_test
	$(LDPREFIX)  $(TIME) $(BIN)/changtestcompression
	$(LDPREFIX)  $(TIME) (LD_LIBRARY_PATH=$(LIB);export LD_LIBRARY_PATH;$(BIN)/tiff2cbf XRD1621.tif XRD1621.cbf)
	$(LDPREFIX)  $(TIME) $(BIN)/cif2cbf -I 4 -C 100. -L 0. -e n -c b -i XRD1621.cbf -o XRD1621_I4encbC100.cbf
	-$(SIGNATURE) < XRD1621.cbf | $(DIFF) - XRD1621_orig.cbf$(SEXT); rm XRD1621.cbf
	-$(SIGNATURE) < XRD1621_I4encbC100.cbf | $(DIFF) - XRD1621_I4encbC100_orig.cbf$(SEXT); rm XRD1621_I4encbC100.cbf
	@-rm -f adscconverted_flat.cbf
	@-rm -f $(TESTINPUT_BASIC) $(TESTINPUT_EXTRA) $(TESTOUTPUTSIGS)
	@-rm -f cif2cbf_packed.cbf    makecbf.cbf \
	cif2cbf_packed.cbf    img2cif_packed.cbf \
	cif2cbf_canonical.cbf img2cif_canonical.cbf
	@-rm -f testrealout.cbf testflatout.cbf testflatpackedout.cbf \
	cif2cbf_encp.cbf img2cif_canonical.cif img2cif_packed.cif 9ins.cbf


	
pycbftests:  $(PYCBF)/_pycbf.$(PYCBFEXT) $(BIN)/cbf_standardize_numbers
	($(RTLPEXPORTS) cd $(PYCBF); $(PYTHON) pycbf_test1.py)
	($(RTLPEXPORTS) cd $(PYCBF); $(PYTHON) pycbf_test2.py)
	($(RTLPEXPORTS) cd $(PYCBF); $(PYTHON) pycbf_test3.py)
	($(RTLPEXPORTS) cd $(PYCBF); $(PYTHON) pycbf_test4.py)
	($(RTLPEXPORTS) cd $(PYCBF); $(PYTHON) pycbf_testfelaxes.py fel_test1.cbf |\
		$(BIN)/cbf_standardize_numbers - 4 > fel_test1.out)
	($(RTLPEXPORTS) cd $(PYCBF); $(PYTHON) pycbf_testfelaxes.py fel_test2.cbf |\
		$(BIN)/cbf_standardize_numbers - 4 > fel_test2.out)
	($(RTLPEXPORTS) cd $(PYCBF); $(PYTHON) pycbf_testfelaxes.py ../hit-20140306005258847.cbf |\
		$(BIN)/cbf_standardize_numbers - 4 > fel_test3.out)
	-$(BIN)/cbf_standardize_numbers $(PYCBF)/fel_test1_orig.out 4 | \
		$(DIFF) $(PYCBF)/fel_test1.out -
	-$(BIN)/cbf_standardize_numbers $(PYCBF)/fel_test2_orig.out 4 | \
		$(DIFF) $(PYCBF)/fel_test2.out -
	-$(BIN)/cbf_standardize_numbers $(PYCBF)/fel_test3_orig.out 4 | \
		$(DIFF) $(PYCBF)/fel_test3.out -

pycbfinstall: $(PYCBF)/_pycbf.$(PYCBFEXT) $(PYCBF)/pycbfinstall

pycbfuserinstall: $(PYCBF)/_pycbf.$(PYCBFEXT) $(PYCBF)/pycbfuserinstall

javatests: $(BIN)/ctestcbf $(BIN)/testcbf.class $(SOLIB)/libcbf_wrap.so
	$(LDPREFIX)  $(BIN)/ctestcbf > testcbfc.txt
	$(LDPREFIX) java -cp $(JCBF)/cbflib-$(VERSION).jar:$(BIN) testcbf > testcbfj.txt
	$(DIFF) testcbfc.txt testcbfj.txt

dectristests: $(BIN)/cbf_template_t $(TEMPLATES)/cbf_test_orig.out
	$(LDPREFIX)  (cd templates; ../bin/cbf_template_t; diff -a -u cbf_test_orig.out cbf_template_t.out)

#
# Remove all non-source files
#
empty:
	@-rm -rf $(LIB)/*
	@-rm -rf $(INCLUDE)/bitshuf*
	@-rm -rf $(INCLUDE)/bshuf*
	@-rm -rf $(INCLUDE)/H5*
	@-rm -rf $(BIN)/*
	@-rm -f  $(PYCBF)/_pycbf.$(PYCBFEXT)
	@-rm -rf  $(PYCBF)/build/*
	@-rm -f  $(PYCBF)/newtest1.cbf
	@-rm -f  $(PYCBF)/fel_test1.out
	@-rm -f  $(PYCBF)/fel_test2.out
	@-rm -f  $(PYCBF)/setup.py
	@-rm -f  $(PYCBF)/setup_MINGW.py
	@-rm -f  makecbf.cbf
	@-rm -f  img2cif_packed.cif
	@-rm -f  img2cif_canonical.cif
	@-rm -f  img2cif_packed.cbf
	@-rm -f  img2cif_canonical.cbf
	@-rm -f  img2cif_raw.cbf
	@-rm -f  cif2cbf_packed.cbf
	@-rm -f  cif2cbf_canonical.cbf
	@-rm -f  converted.cbf
	@-rm -f  adscconverted.cbf
	@-rm -f  converted_flat.cbf
	@-rm -f  adscconverted_flat.cbf
	@-rm -f  adscconverted_flat_rev.cbf
	@-rm -f  mb_LP_1_001.cbf
	@-rm -f  cif2cbf_ehcn.cif
	@-rm -f  cif2cbf_encp.cbf
	@-rm -f  9ins.cbf
	@-rm -f  9ins.cif
	@-rm -f  testcell.prt
	@-rm -f  example.mar2300
	@-rm -f  converted_orig.cbf
	@-rm -f  adscconverted_orig.cbf
	@-rm -f  converted_flat_orig.cbf
	@-rm -f  adscconverted_flat_orig.cbf
	@-rm -f  adscconverted_flat_rev_orig.cbf
	@-rm -f  mb_LP_1_001_orig.cbf
	@-rm -f  insulin_pilatus6mconverted*.cbf
	@-rm -f  insulin_pilatus6mconverted*.h5
	@-rm -f  insulin_pilatus6m.cbf
	@-rm -f  testrealin.cbf
	@-rm -f  testrealout.cbf
	@-rm -f  testflatin.cbf
	@-rm -f  testflatout.cbf
	@-rm -f  testflatpackedin.cbf
	@-rm -f  testflatpackedout.cbf
	@-rm -f  CTC.cbf
	@-rm -f  test_fcb_read_testflatout.out
	@-rm -f  test_fcb_read_testflatpackedout.out
	@-rm -f  test_xds_bin_testflatpackedout.out
	@-rm -f  test_xds_bin_testflatout.out
	@-rm -f  test_fcb_read_testflatout_orig.out
	@-rm -f  test_fcb_read_testflatpackedout_orig.out
	@-rm -f  test_xds_bin_testflatpackedout_orig.out
	@-rm -f  test_xds_bin_testflatout_orig.out
	@-rm -f  mb_LP_1_001.img
	@-rm -f  9ins.cif
	@-rm -f  testcell_orig.prt
	@-rm -f  $(DECTRIS_EXAMPLES)/cbf_template_t.out
	@-rm -f  XRD1621.cbf
	@-rm -f  XRD1621_orig.cbf
	@-rm -f  XRD1621_I4encbC100_orig.cbf
	@-rm -f  XRD1621_I4encbC100.cbf
	@-rm -f  minicbf_orig.h5
	@-rm -f  $(SRC)/fcb_exit_binary.f90
	@-rm -f  $(SRC)/fcb_next_binary.f90
	@-rm -f  $(SRC)/fcb_open_cifin.f90
	@-rm -f  $(SRC)/fcb_packed.f90
	@-rm -f  $(SRC)/fcb_read_bits.f90
	@-rm -f  $(SRC)/fcb_read_image.f90
	@-rm -f  $(SRC)/fcb_read_xds_i2.f90
	@-rm -f  $(EXAMPLES)/test_fcb_read_image.f90
	@-rm -f  $(EXAMPLES)/test_xds_binary.f90
	@-rm -f  symlinksdone
	@-rm -f  $(TESTOUTPUT) *$(SEXT)
	@-rm -rf $(SOLIB)
	@-rm -rf org
	@-rm -rf $(JCBF)
	@-rm -rf $(REGEX)
	@-rm -rf $(REGEX)_install
	@-rm -rf $(TIFF)
	@-rm -rf $(TIFF)_install
	@-rm -rf $(HDF5)
	@-rm -rf $(HDF5)_install
	@-rm -rf $(INCLUDE)/tiff*
	@-rm -rf $(INCLUDE)/H5*
	@-rm -rf $(INCLUDE)/hdf5*
	@-rm -rf share
	@-rm -rf $(MINICBF_TEST)/i19*
	@-rm -rf solib
	@-rm -f  thaumatin_die_M1S5_1_0005_2.cbf
	@-rm -f  1191_00005.cbf
	@-rm -f  XRD1621.tif
	@-rm -f  md5tmp
	@-rm -rf $(PYCBF)/build
	@-rm -f  *_old
	@-rm -f X4_lots_M1S4_1_*.cbf
	@-rm -f testfile.h5
	@-rm -f hit-20140306005258847.cbf
	@-rm -f build_*
	./.undosymlinks
	
#
# Remove temporary files
#
clean:	
	@-rm -f core 
	@-rm -f *.o
	@-rm -f *.u
#
# Restore to distribution state
#
distclean:	clean empty

#
# Create a Tape Archive for distribution
#

tar:   $(DOCUMENTS) $(SOURCE) $(SRC)/cbf.stx $(HEADERS) $(M4FILES)\
	$(EXAMPLES) \
	README.html README Makefile \
	$(JPEGS)
	-/bin/rm -f CBFlib.tar*
	tar cvBf CBFlib.tar \
	$(DOCUMENTS) $(SOURCE) $(SRC)/cbf.stx $(HEADERS) $(M4FILES)\
	$(EXAMPLES) \
	README.html README Makefile \
	$(JPEGS)
	gzip --best CBFlib.tar

