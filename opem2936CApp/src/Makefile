TOP=../..

include $(TOP)/configure/CONFIG

PROD_IOC = opem2936C

DBD += opem2936C.dbd

opem2936C_DBD += base.dbd
opem2936C_DBD += stream.dbd
opem2936C_DBD += asyn.dbd
opem2936C_DBD += asSupport.dbd
opem2936C_DBD += calcSupport.dbd
opem2936C_DBD += drvAsynIPPort.dbd

opem2936C_SRCS += opem2936C_registerRecordDeviceDriver.cpp
opem2936C_SRCS_DEFAULT += opem2936CMain.cpp

opem2936C_LIBS += asyn
opem2936C_LIBS += autosave
opem2936C_LIBS += stream
opem2936C_LIBS += calc

opem2936C_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES

