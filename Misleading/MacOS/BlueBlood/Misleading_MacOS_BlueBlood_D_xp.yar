
rule Misleading_MacOS_BlueBlood_D_xp{
	meta:
		description = "Misleading:MacOS/BlueBlood.D!xp,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_00_0 = {44 61 65 6d 6f 6e 50 72 69 76 61 74 65 48 6f 6d 65 2e 6d } //1 DaemonPrivateHome.m
		$a_00_1 = {2f 4c 69 62 72 61 72 79 2f 44 65 76 65 6c 6f 70 65 72 2f 58 63 6f 64 65 2f 44 65 72 69 76 65 64 44 61 74 61 2f 62 6c 62 6c 75 2d } //2 /Library/Developer/Xcode/DerivedData/blblu-
		$a_00_2 = {5b 53 63 72 65 65 6e 73 68 6f 74 55 74 69 6c 73 20 74 61 6b 65 53 63 72 65 65 6e 53 68 6f 74 57 69 74 68 53 63 72 65 65 6e 3a } //1 [ScreenshotUtils takeScreenShotWithScreen:
		$a_00_3 = {6b 69 6c 6c 50 72 6f 63 65 73 73 57 69 74 68 50 72 6f 63 65 73 73 4e 61 6d 65 3a } //1 killProcessWithProcessName:
		$a_00_4 = {67 65 74 53 79 73 49 6e 66 6f 49 6e 74 42 79 4e 61 6d 65 } //1 getSysInfoIntByName
		$a_00_5 = {2f 55 73 65 72 41 63 74 69 76 69 74 79 43 61 70 74 75 72 65 4d 61 6e 61 67 65 72 2e 62 75 69 6c 64 } //1 /UserActivityCaptureManager.build
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=5
 
}