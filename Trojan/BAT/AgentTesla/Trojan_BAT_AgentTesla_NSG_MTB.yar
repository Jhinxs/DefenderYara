
rule Trojan_BAT_AgentTesla_NSG_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NSG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {24 37 31 37 61 39 61 36 37 2d 62 34 31 61 2d 34 35 61 66 2d 61 38 36 32 2d 30 62 33 62 38 39 39 33 30 37 31 61 } //1 $717a9a67-b41a-45af-a862-0b3b8993071a
		$a_01_1 = {44 65 43 72 79 70 74 } //1 DeCrypt
		$a_01_2 = {4d 61 74 72 69 78 45 64 69 74 6f 72 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //1 MatrixEditor.Form1.resources
		$a_01_3 = {41 53 44 61 64 41 44 61 64 41 44 } //1 ASDadADadAD
		$a_01_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_01_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}