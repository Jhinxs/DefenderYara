
rule Trojan_Win32_RedLineStealer_MOA_MTB{
	meta:
		description = "Trojan:Win32/RedLineStealer.MOA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {6f 73 6a 64 6e 66 69 73 62 64 66 69 73 64 6f 66 73 64 69 6f 66 } //1 osjdnfisbdfisdofsdiof
		$a_01_1 = {7a 00 65 00 6c 00 61 00 79 00 75 00 68 00 65 00 66 00 65 00 68 00 65 00 77 00 } //1 zelayuhefehew
		$a_01_2 = {63 61 70 61 73 75 66 69 64 6f 6c 69 64 } //1 capasufidolid
		$a_01_3 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_01_4 = {53 6c 65 65 70 } //1 Sleep
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}