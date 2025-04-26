
rule Trojan_BAT_AgentTesla_NRU_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NRU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {7f 5e 59 cf 7f 4e 59 83 52 4e 59 4e 59 } //1
		$a_01_1 = {24 63 61 31 39 34 39 31 35 2d 34 34 31 63 2d 34 62 66 38 2d 39 66 31 64 2d 32 34 39 62 61 65 62 62 35 62 30 32 } //1 $ca194915-441c-4bf8-9f1d-249baebb5b02
		$a_01_2 = {43 65 6c 6c 5f 50 68 6f 6e 65 5f 50 61 63 6b 61 67 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 Cell_Phone_Packages.Resources.resources
		$a_81_3 = {53 79 73 74 65 6d 2e 43 6f 6e 76 65 72 74 } //1 System.Convert
		$a_81_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}