
rule Trojan_Win32_Goldenspy_A_MTB{
	meta:
		description = "Trojan:Win32/Goldenspy.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {25 73 5c 73 79 73 74 65 6d 33 32 5c 74 61 78 76 65 72 2e 65 78 65 } //1 %s\system32\taxver.exe
		$a_81_1 = {25 73 5c 64 65 62 75 67 5c 77 69 61 5c 74 61 78 76 65 72 2e 65 78 65 } //1 %s\debug\wia\taxver.exe
		$a_81_2 = {25 73 5c 74 65 6d 70 5c 74 61 78 76 65 72 2e 65 78 65 } //1 %s\temp\taxver.exe
		$a_81_3 = {25 73 5c 74 61 78 76 65 72 2e 65 78 65 } //1 %s\taxver.exe
		$a_81_4 = {64 6f 77 6e 6c 6f 61 64 2e 74 61 78 2d 68 65 6c 70 65 72 2e 63 6f 6d } //1 download.tax-helper.com
		$a_81_5 = {57 4d 50 20 41 73 73 69 73 74 61 6e 74 20 50 61 74 63 68 } //1 WMP Assistant Patch
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}