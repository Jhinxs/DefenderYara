
rule Trojan_BAT_AgentTesla_JPD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JPD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {65 30 39 32 62 36 38 37 2d 36 38 33 35 2d 34 39 32 37 2d 62 61 65 34 2d 35 34 32 32 62 31 33 66 36 35 33 36 } //1 e092b687-6835-4927-bae4-5422b13f6536
		$a_81_1 = {4f 75 74 72 61 67 65 20 45 6e 67 69 6e 65 } //1 Outrage Engine
		$a_81_2 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_3 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}