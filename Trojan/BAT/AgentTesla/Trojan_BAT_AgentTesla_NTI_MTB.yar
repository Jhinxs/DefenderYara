
rule Trojan_BAT_AgentTesla_NTI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NTI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {57 b5 a2 3d 09 1f 00 00 00 00 00 00 00 00 00 00 02 00 00 00 96 00 00 00 81 00 00 00 d4 00 00 00 ae 02 00 00 11 01 00 00 0e 01 00 00 6b 00 00 00 04 00 00 00 07 00 00 00 33 } //1
		$a_01_1 = {64 66 67 68 72 74 64 62 67 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 dfghrtdbg.Resources.resources
		$a_01_2 = {66 63 38 33 62 36 62 31 2d 39 31 36 31 2d 34 38 31 35 2d 62 65 31 63 2d 39 30 36 30 64 37 35 32 62 31 64 64 } //1 fc83b6b1-9161-4815-be1c-9060d752b1dd
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}