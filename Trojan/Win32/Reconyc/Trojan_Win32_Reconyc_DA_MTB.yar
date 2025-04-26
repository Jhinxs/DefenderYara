
rule Trojan_Win32_Reconyc_DA_MTB{
	meta:
		description = "Trojan:Win32/Reconyc.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_81_0 = {57 69 6e 4c 69 63 65 6e 73 65 44 72 69 76 65 72 56 65 72 73 69 6f 6e } //1 WinLicenseDriverVersion
		$a_81_1 = {45 56 45 4e 54 5f 53 49 4e 4b 5f 47 65 74 49 44 73 4f 66 4e 61 6d 65 73 } //1 EVENT_SINK_GetIDsOfNames
		$a_81_2 = {54 4a 70 72 6f 6a 4d 61 69 6e 2e 65 78 65 } //1 TJprojMain.exe
		$a_81_3 = {6d 79 61 70 70 2e 65 78 65 } //1 myapp.exe
		$a_81_4 = {50 72 6f 6a 65 63 74 31 } //1 Project1
		$a_81_5 = {54 68 65 6d 69 64 61 } //1 Themida
		$a_81_6 = {2e 74 61 67 67 61 6e 74 } //1 .taggant
		$a_81_7 = {69 2e 64 6c 6c } //1 i.dll
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}