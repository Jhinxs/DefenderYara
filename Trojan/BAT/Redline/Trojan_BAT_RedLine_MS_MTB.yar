
rule Trojan_BAT_RedLine_MS_MTB{
	meta:
		description = "Trojan:BAT/RedLine.MS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_01_0 = {57 fd a2 35 09 00 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 39 00 00 00 26 00 00 00 49 00 00 00 6b } //10
		$a_01_1 = {53 65 63 75 72 69 74 79 41 63 74 69 6f 6e } //1 SecurityAction
		$a_01_2 = {49 73 55 70 70 65 72 3c 63 68 61 72 3e } //1 IsUpper<char>
		$a_01_3 = {63 6f 6f 6b 69 65 } //1 cookie
		$a_01_4 = {53 6b 69 70 56 65 72 69 66 69 63 61 74 69 6f 6e } //1 SkipVerification
		$a_01_5 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=15
 
}