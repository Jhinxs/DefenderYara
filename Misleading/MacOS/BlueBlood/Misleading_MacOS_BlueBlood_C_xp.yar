
rule Misleading_MacOS_BlueBlood_C_xp{
	meta:
		description = "Misleading:MacOS/BlueBlood.C!xp,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_00_0 = {55 41 4d 41 4d 61 6e 61 67 65 72 20 73 74 61 72 74 41 63 74 69 76 69 74 79 4d 6f 6e 69 74 6f 72 } //1 UAMAManager startActivityMonitor
		$a_00_1 = {2f 42 61 63 6b 75 70 2f 46 6c 65 78 69 53 50 59 } //1 /Backup/FlexiSPY
		$a_00_2 = {63 6f 6d 2e 61 70 70 6c 6c 65 2e 55 73 65 72 41 63 74 69 76 69 74 79 4d 6f 6e 69 74 6f 72 41 67 65 6e 74 55 49 } //1 com.applle.UserActivityMonitorAgentUI
		$a_00_3 = {55 73 65 72 41 63 74 69 76 69 74 79 43 61 70 74 75 72 65 4d 61 6e 61 67 65 72 2f 55 73 65 72 41 63 74 69 76 69 74 79 4d 6f 6e 69 74 6f 72 41 67 65 6e 74 } //1 UserActivityCaptureManager/UserActivityMonitorAgent
		$a_00_4 = {63 6f 6d 2e 61 70 70 6c 6c 65 2e 55 41 4d 41 2e 6c 6f 67 6f 75 74 43 6f 6e 74 69 6e 75 65 64 } //1 com.applle.UAMA.logoutContinued
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=4
 
}