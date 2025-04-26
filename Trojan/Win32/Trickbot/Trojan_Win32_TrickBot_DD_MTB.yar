
rule Trojan_Win32_TrickBot_DD_MTB{
	meta:
		description = "Trojan:Win32/TrickBot.DD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {48 79 6b 67 31 42 48 7e 34 38 23 69 6c 59 72 } //1 Hykg1BH~48#ilYr
		$a_81_1 = {4c 6f 63 6b 52 65 73 6f 75 72 63 65 } //1 LockResource
		$a_81_2 = {57 72 69 74 65 46 69 6c 65 } //1 WriteFile
		$a_81_3 = {50 6f 73 74 4d 65 73 73 61 67 65 41 } //1 PostMessageA
		$a_81_4 = {47 65 74 43 61 70 74 75 72 65 } //1 GetCapture
		$a_81_5 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}