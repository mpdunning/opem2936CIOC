#!../../bin/linux-x86_64/opem2936C

epicsEnvSet( "STREAM_PROTOCOL_PATH","../../opem2936CApp/Db:.")

< envPaths

cd ${TOP}

dbLoadDatabase "dbd/opem2936C.dbd"
opem2936C_registerRecordDeviceDriver pdbbase

epicsEnvSet("P",   "ESB:OPEM02")
drvAsynIPPortConfigure ("L0","ts-esb-06:2001",0,0,0)

#asynSetTraceMask("L0",-1,0x019)
#asynSetTraceIOMask("L0",-1,0x2)

dbLoadRecords("db/opem2936C.db","P=ESB:OPEM02,PORT=P0,L=L0,A=0")

cd ${TOP}/iocBoot/${IOC}
iocInit()

dbpf("$(P):BO:BEEP","0")
dbpf("$(P):BO:ECHO","0")
