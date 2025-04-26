
rule Trojan_Win32_Bladabindi_BC_MTB{
	meta:
		description = "Trojan:Win32/Bladabindi.BC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_81_0 = {4c 6f 6f 6b 65 72 } //1 Looker
		$a_81_1 = {44 61 67 73 70 72 65 73 73 65 38 } //1 Dagspresse8
		$a_81_2 = {4c 61 62 64 61 63 69 73 6d 75 73 33 } //1 Labdacismus3
		$a_81_3 = {4c 65 63 61 6e 6f 6d 61 6e 63 65 72 } //1 Lecanomancer
		$a_81_4 = {54 72 73 74 65 73 6c 73 65 73 74 } //1 Trsteslsest
		$a_81_5 = {6c 65 6e 73 67 72 65 76 65 72 6e 65 73 } //1 lensgrevernes
		$a_81_6 = {50 61 65 64 61 67 6f 67 69 73 6b } //1 Paedagogisk
		$a_81_7 = {53 70 75 6e 73 6e 69 6e 67 65 72 6e 65 34 } //1 Spunsningerne4
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}