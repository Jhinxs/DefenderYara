
rule Trojan_Win32_Dridex_M_MTB{
	meta:
		description = "Trojan:Win32/Dridex.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 "
		
	strings :
		$a_81_0 = {4f 72 64 65 72 64 69 63 74 69 6f 6e 61 72 79 5c 53 69 6c 65 6e 74 2e 70 64 62 } //3 Orderdictionary\Silent.pdb
		$a_81_1 = {50 53 43 72 65 64 65 6e 74 69 61 6c } //3 PSCredential
		$a_81_2 = {47 65 74 50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 61 74 69 6f 6e } //3 GetProcessWindowStation
		$a_81_3 = {47 65 74 53 79 73 74 65 6d 54 69 6d 65 50 72 65 63 69 73 65 41 73 46 69 6c 65 54 69 6d 65 } //3 GetSystemTimePreciseAsFileTime
		$a_81_4 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //3 IsDebuggerPresent
		$a_81_5 = {47 65 74 53 74 61 72 74 75 70 49 6e 66 6f 57 } //3 GetStartupInfoW
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3) >=18
 
}