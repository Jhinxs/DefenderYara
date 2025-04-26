
rule Trojan_BAT_AgentTesla_NH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 "
		
	strings :
		$a_03_0 = {02 7b 16 00 00 04 0a 06 0b 07 03 28 ?? ?? ?? 0a 74 ?? ?? ?? 02 0c 02 7c ?? ?? ?? 04 08 07 28 ?? ?? ?? 2b 0a 06 07 38 } //5
		$a_01_1 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
		$a_01_2 = {48 75 72 61 46 6f 72 6d 31 } //1 HuraForm1
		$a_01_3 = {24 62 33 37 66 64 30 31 38 2d 66 64 62 61 2d 34 35 34 63 2d 62 66 33 65 2d 65 30 64 36 64 63 31 33 37 35 66 63 } //1 $b37fd018-fdba-454c-bf3e-e0d6dc1375fc
		$a_01_4 = {4c 4f 47 4f 5f 43 4f 4d 50 4c 45 54 41 5f 56 45 54 4f 52 49 5a 41 44 41 } //1 LOGO_COMPLETA_VETORIZADA
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=9
 
}
rule Trojan_BAT_AgentTesla_NH_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.NH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 "
		
	strings :
		$a_01_0 = {24 36 66 61 33 65 64 62 35 2d 38 32 35 38 2d 34 39 65 63 2d 39 63 62 62 2d 65 35 65 65 65 33 64 30 65 63 35 37 } //10 $6fa3edb5-8258-49ec-9cbb-e5eee3d0ec57
		$a_01_1 = {48 65 6c 70 65 72 4f 6e 65 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 HelperOne.Properties.Resources.resources
		$a_01_2 = {72 4f 6e 65 2e 46 6f 72 6d 31 2e 72 65 } //1 rOne.Form1.re
		$a_01_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=13
 
}