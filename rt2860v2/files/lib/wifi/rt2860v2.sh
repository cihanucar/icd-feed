#!/bin/sh

append DRIVERS "rt2860v2"

# In init.d/boot:
# /sbin/wifi detect > /tmp/wireless.tmp
# will then cause /sbin/wifi to launch this function.
# The stdout of the function will be appended to /etc/config/wireless,
# which is the configuration storage of the uci.
detect_rt2860v2() {
	# Run this function only in first boot.
	# Because it's going to append the default Wi-Fi configurations.

	[ -e /tmp/RT2860.dat ] && return 0

	cat > /tmp/RT2860.dat << EOF
#The word of "Default" must not be removed
Default
CountryRegion=0
CountryRegionABand=7
CountryCode=US
BssidNum=1
SSID1=OpenWrt
WirelessMode=9
FixedTxMode=
TxRate=0
Channel=11
BasicRate=15
BeaconPeriod=100
DtimPeriod=1
TxPower=100
DisableOLBC=0
BGProtection=0
TxAntenna=
RxAntenna=
TxPreamble=1
RTSThreshold=2347
FragThreshold=2346
TxBurst=1
PktAggregate=1
AutoProvisionEn=0
FreqDelta=0
TurboRate=0
WmmCapable=1
APAifsn=3;7;1;1
APCwmin=4;4;3;2
APCwmax=6;10;4;3
APTxop=0;0;94;47
APACM=0;0;0;0
BSSAifsn=3;7;2;2
BSSCwmin=4;4;3;2
BSSCwmax=10;10;4;3
BSSTxop=0;0;94;47
BSSACM=0;0;0;0
AckPolicy=0;0;0;0
APSDCapable=0
DLSCapable=0
NoForwarding=0
NoForwardingBTNBSSID=0
HideSSID=1
ShortSlot=1
AutoChannelSelect=0
IEEE8021X=0
IEEE80211H=0
CarrierDetect=0
ITxBfEn=0
PreAntSwitch=
PhyRateLimit=0
DebugFlags=0
ETxBfEnCond=0
ITxBfTimeout=0
ETxBfTimeout=0
ETxBfNoncompress=0
ETxBfIncapable=0
FineAGC=0
StreamMode=0
StreamModeMac0=
StreamModeMac1=
StreamModeMac2=
StreamModeMac3=
CSPeriod=6
RDRegion=
StationKeepAlive=0
DfsLowerLimit=0
DfsUpperLimit=0
DfsOutdoor=0
SymRoundFromCfg=0
BusyIdleFromCfg=0
DfsRssiHighFromCfg=0
DfsRssiLowFromCfg=0
DFSParamFromConfig=0
FCCParamCh0=
FCCParamCh1=
FCCParamCh2=
FCCParamCh3=
CEParamCh0=
CEParamCh1=
CEParamCh2=
CEParamCh3=
JAPParamCh0=
JAPParamCh1=
JAPParamCh2=
JAPParamCh3=
JAPW53ParamCh0=
JAPW53ParamCh1=
JAPW53ParamCh2=
JAPW53ParamCh3=
FixDfsLimit=0
LongPulseRadarTh=0
AvgRssiReq=0
DFS_R66=0
BlockCh=
GreenAP=0
PreAuth=0
AuthMode=OPEN
EncrypType=NONE
WapiPsk1=
WapiPsk2=
WapiPsk3=
WapiPsk4=
WapiPsk5=
WapiPsk6=
WapiPsk7=
WapiPsk8=
WapiPskType=0
Wapiifname=
WapiAsCertPath=
WapiUserCertPath=
WapiAsIpAddr=
WapiAsPort=
RekeyMethod=DISABLE
RekeyInterval=3600
PMKCachePeriod=10
MeshAutoLink=0
MeshAuthMode=
MeshEncrypType=
MeshDefaultkey=0
MeshWEPKEY=
MeshWPAKEY=
MeshId=
WPAPSK1=12345678
WPAPSK2=
WPAPSK3=
WPAPSK4=
WPAPSK5=
WPAPSK6=
WPAPSK7=
WPAPSK8=
DefaultKeyID=1
Key1Type=0
Key1Str1=
Key1Str2=
Key1Str3=
Key1Str4=
Key1Str5=
Key1Str6=
Key1Str7=
Key1Str8=
Key2Type=0
Key2Str1=
Key2Str2=
Key2Str3=
Key2Str4=
Key2Str5=
Key2Str6=
Key2Str7=
Key2Str8=
Key3Type=0
Key3Str1=
Key3Str2=
Key3Str3=
Key3Str4=
Key3Str5=
Key3Str6=
Key3Str7=
Key3Str8=
Key4Type=0
Key4Str1=
Key4Str2=
Key4Str3=
Key4Str4=
Key4Str5=
Key4Str6=
Key4Str7=
Key4Str8=
HSCounter=0
HT_HTC=1
HT_RDG=1
HT_LinkAdapt=0
HT_OpMode=0
HT_MpduDensity=5
HT_EXTCHA=0
HT_BW=0
HT_AutoBA=1
HT_BADecline=0
HT_AMSDU=0
HT_BAWinSize=64
HT_GI=1
HT_STBC=1
HT_MCS=33
HT_TxStream=2
HT_RxStream=2
HT_PROTECT=1
HT_DisallowTKIP=1
HT_BSSCoexistence=1
GreenAP=0
WscConfMode=0
WscConfStatus=1
WCNTest=0
AccessPolicy0=0
AccessControlList0=
AccessPolicy1=0
AccessControlList1=
AccessPolicy2=0
AccessControlList2=
AccessPolicy3=0
AccessControlList3=
AccessPolicy4=0
AccessControlList4=
AccessPolicy5=0
AccessControlList5=
AccessPolicy6=0
AccessControlList6=
AccessPolicy7=0
AccessControlList7=
WdsEnable=0
WdsPhyMode=
WdsEncrypType=NONE
WdsList=
Wds0Key=
Wds1Key=
Wds2Key=
Wds3Key=
RADIUS_Server=
RADIUS_Port=1812
RADIUS_Key1=
RADIUS_Key2=
RADIUS_Key3=
RADIUS_Key4=
RADIUS_Key5=
RADIUS_Key6=
RADIUS_Key7=
RADIUS_Key8=
RADIUS_Acct_Server=
RADIUS_Acct_Port=1813
RADIUS_Acct_Key=
own_ip_addr=
Ethifname=
EAPifname=
PreAuthifname=
session_timeout_interval=0
idle_timeout_interval=0
WiFiTest=0
TGnWifiTest=0
ApCliEnable=0
ApCliSsid=
ApCliBssid=
ApCliAuthMode=
ApCliEncrypType=
ApCliWPAPSK=
ApCliDefaultKeyID=0
ApCliKey1Type=0
ApCliKey1Str=
ApCliKey2Type=0
ApCliKey2Str=
ApCliKey3Type=0
ApCliKey3Str=
ApCliKey4Type=0
ApCliKey4Str=
RadioOn=1
SSID=
WPAPSK=
Key1Str=
Key2Str=
Key3Str=
Key4Str=
EOF

	return 0
}
