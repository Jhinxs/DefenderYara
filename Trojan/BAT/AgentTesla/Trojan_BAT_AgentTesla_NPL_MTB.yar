
rule Trojan_BAT_AgentTesla_NPL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NPL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {24 36 64 65 37 35 63 61 37 2d 39 38 64 64 2d 34 63 33 66 2d 39 33 37 34 2d 31 63 38 66 65 34 66 30 35 33 61 34 } //1 $6de75ca7-98dd-4c3f-9374-1c8fe4f053a4
		$a_01_1 = {6e 65 77 6e 65 77 46 34 35 34 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 newnewF454.Resources.resources
		$a_01_2 = {53 75 62 73 74 72 69 6e 67 } //1 Substring
		$a_01_3 = {4c 00 6f 00 20 00 00 05 61 00 64 } //1
		$a_01_4 = {35 00 36 00 37 00 31 00 35 00 31 } //1
		$a_01_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_01_6 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}