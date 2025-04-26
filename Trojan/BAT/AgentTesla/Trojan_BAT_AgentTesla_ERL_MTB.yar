
rule Trojan_BAT_AgentTesla_ERL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ERL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 00 46 00 34 00 54 00 34 00 35 00 34 00 41 00 43 00 38 00 30 00 35 00 5a 00 50 00 37 00 41 00 47 00 46 00 45 00 30 00 37 00 34 00 } //10 CF4T454AC805ZP7AGFE074
		$a_01_1 = {50 00 61 00 64 00 64 00 69 00 6e 00 67 00 48 00 65 00 6c 00 70 00 65 00 72 00 73 00 2e 00 4d 00 79 00 42 00 69 00 6e 00 61 00 72 00 79 00 53 00 65 00 61 00 72 00 63 00 68 00 54 00 72 00 65 00 65 00 } //5 PaddingHelpers.MyBinarySearchTree
		$a_01_2 = {47 65 74 54 79 70 65 } //1 GetType
		$a_01_3 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_01_4 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=18
 
}