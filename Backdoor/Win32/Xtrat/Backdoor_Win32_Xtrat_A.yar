
rule Backdoor_Win32_Xtrat_A{
	meta:
		description = "Backdoor:Win32/Xtrat.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {58 00 54 00 52 00 45 00 4d 00 45 00 } //1 XTREME
		$a_01_1 = {55 6e 69 74 49 6e 6a 65 63 74 53 65 72 76 65 72 } //1 UnitInjectServer
		$a_01_2 = {54 55 6e 69 74 49 6e 66 65 63 74 55 53 42 } //1 TUnitInfectUSB
		$a_01_3 = {54 53 65 72 76 65 72 4b 65 79 6c 6f 67 67 65 72 } //1 TServerKeylogger
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Backdoor_Win32_Xtrat_A_2{
	meta:
		description = "Backdoor:Win32/Xtrat.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 06 00 05 00 00 "
		
	strings :
		$a_00_0 = {71 00 75 00 61 00 6c 00 71 00 75 00 65 00 72 00 63 00 6f 00 69 00 73 00 61 00 72 00 73 00 72 00 73 00 72 00 } //1 qualquercoisarsrsr
		$a_00_1 = {53 00 54 00 41 00 52 00 54 00 53 00 45 00 52 00 56 00 45 00 52 00 42 00 55 00 46 00 46 00 45 00 52 00 } //1 STARTSERVERBUFFER
		$a_00_2 = {58 00 74 00 72 00 65 00 6d 00 65 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //2 XtremeKeylogger
		$a_01_3 = {54 55 53 42 53 70 72 65 61 64 65 72 } //2 TUSBSpreader
		$a_01_4 = {53 65 72 76 65 72 4b 65 79 6c 6f 67 67 65 72 55 } //2 ServerKeyloggerU
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2) >=6
 
}
rule Backdoor_Win32_Xtrat_A_3{
	meta:
		description = "Backdoor:Win32/Xtrat.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 "
		
	strings :
		$a_00_0 = {2d 00 2d 00 28 00 28 00 4d 00 75 00 74 00 65 00 78 00 29 00 29 00 2d 00 2d 00 50 00 45 00 52 00 53 00 49 00 53 00 54 00 } //1 --((Mutex))--PERSIST
		$a_00_1 = {5b 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 5d 00 } //1 [Process]
		$a_00_2 = {5b 00 43 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 20 00 45 00 6e 00 64 00 5d 00 } //1 [Clipboard End]
		$a_00_3 = {53 00 54 00 41 00 52 00 54 00 53 00 45 00 52 00 56 00 45 00 52 00 42 00 55 00 46 00 46 00 45 00 52 00 } //1 STARTSERVERBUFFER
		$a_00_4 = {58 00 74 00 72 00 65 00 6d 00 65 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //2 XtremeKeylogger
		$a_01_5 = {54 53 65 72 76 65 72 4b 65 79 6c 6f 67 67 65 72 } //2 TServerKeylogger
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*2+(#a_01_5  & 1)*2) >=5
 
}
rule Backdoor_Win32_Xtrat_A_4{
	meta:
		description = "Backdoor:Win32/Xtrat.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 58 00 74 00 72 00 65 00 6d 00 65 00 52 00 41 00 54 00 } //1 SOFTWARE\XtremeRAT
		$a_01_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 46 00 61 00 6b 00 65 00 4d 00 65 00 73 00 73 00 61 00 67 00 65 00 } //1 SOFTWARE\FakeMessage
		$a_01_2 = {55 6e 69 74 47 65 74 53 65 72 76 65 72 } //1 UnitGetServer
		$a_01_3 = {55 6e 69 74 4b 65 79 6c 6f 67 67 65 72 } //1 UnitKeylogger
		$a_01_4 = {55 6e 69 74 43 72 79 70 74 53 74 72 69 6e 67 } //1 UnitCryptString
		$a_01_5 = {55 6e 69 74 49 6e 73 74 61 6c 6c 53 65 72 76 65 72 } //1 UnitInstallServer
		$a_01_6 = {55 6e 69 74 49 6e 6a 65 63 74 53 65 72 76 65 72 } //1 UnitInjectServer
		$a_01_7 = {55 6e 69 74 49 6e 6a 65 63 74 50 72 6f 63 65 73 73 } //1 UnitInjectProcess
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}
rule Backdoor_Win32_Xtrat_A_5{
	meta:
		description = "Backdoor:Win32/Xtrat.A,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {66 00 72 00 67 00 6b 00 6d 00 6a 00 67 00 74 00 6d 00 6b 00 6c 00 67 00 74 00 6c 00 72 00 67 00 6c 00 74 00 } //1 frgkmjgtmklgtlrglt
		$a_01_1 = {58 00 54 00 52 00 45 00 4d 00 45 00 } //1 XTREME
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 46 00 61 00 6b 00 65 00 4d 00 65 00 73 00 73 00 61 00 67 00 65 00 } //1 SOFTWARE\FakeMessage
		$a_01_3 = {55 6e 69 74 4b 65 79 6c 6f 67 67 65 72 } //1 UnitKeylogger
		$a_01_4 = {55 6e 69 74 49 6e 6a 65 63 74 53 65 72 76 65 72 } //1 UnitInjectServer
		$a_01_5 = {55 6e 69 74 49 6e 6a 65 63 74 50 72 6f 63 65 73 73 } //1 UnitInjectProcess
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}