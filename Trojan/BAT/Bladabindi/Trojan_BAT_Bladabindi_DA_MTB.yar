
rule Trojan_BAT_Bladabindi_DA_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 "
		
	strings :
		$a_00_0 = {41 01 57 dd b6 ff 09 0b 00 00 00 fa 25 33 00 16 00 00 02 00 00 00 b9 00 00 00 2f 00 00 00 43 01 00 00 98 01 00 00 16 } //3
		$a_01_1 = {44 65 66 61 75 6c 74 45 76 65 6e 74 41 74 74 72 69 62 75 74 65 } //3 DefaultEventAttribute
		$a_01_2 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //3 DebuggerBrowsableAttribute
		$a_01_3 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //3 DebuggerBrowsableState
		$a_01_4 = {51 63 58 46 75 7e 6a 56 28 3b 22 2e 72 65 73 6f 75 72 63 65 73 } //3 QcXFu~jV(;".resources
		$a_01_5 = {47 65 74 48 49 4e 53 54 41 4e 43 45 } //3 GetHINSTANCE
	condition:
		((#a_00_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_01_3  & 1)*3+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3) >=18
 
}