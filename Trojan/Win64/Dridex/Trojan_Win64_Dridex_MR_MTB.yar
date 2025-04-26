
rule Trojan_Win64_Dridex_MR_MTB{
	meta:
		description = "Trojan:Win64/Dridex.MR!MTB,SIGNATURE_TYPE_PEHSTR,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {6b 65 72 6e 65 6c 35 31 2e 64 6c 6c } //1 kernel51.dll
		$a_01_1 = {64 70 61 6d 6e 6c 72 64 2e 70 64 62 } //1 dpamnlrd.pdb
		$a_01_2 = {41 00 70 00 70 00 6c 00 65 00 20 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 2c 00 20 00 49 00 6e 00 63 00 2e 00 } //1 Apple Computer, Inc.
		$a_01_3 = {47 65 74 50 72 69 76 61 74 65 50 72 6f 66 69 6c 65 53 74 72 69 6e 67 57 } //1 GetPrivateProfileStringW
		$a_01_4 = {44 65 62 75 67 41 63 74 69 76 65 50 72 6f 63 65 73 73 } //1 DebugActiveProcess
		$a_01_5 = {44 65 63 72 79 70 74 46 69 6c 65 57 } //1 DecryptFileW
		$a_01_6 = {43 00 6f 00 72 00 65 00 56 00 69 00 64 00 65 00 6f 00 } //1 CoreVideo
		$a_01_7 = {4c 6f 6f 6b 75 70 41 63 63 6f 75 6e 74 53 69 64 41 } //1 LookupAccountSidA
		$a_01_8 = {6b 00 65 00 72 00 6e 00 65 00 6c 00 33 00 32 00 6e 00 74 00 64 00 6c 00 6c 00 2e 00 64 00 6c 00 } //1 kernel32ntdll.dl
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}