
rule Trojan_BAT_Remcos_RF_MTB{
	meta:
		description = "Trojan:BAT/Remcos.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {24 65 66 30 66 36 65 31 31 2d 32 39 31 37 2d 34 35 61 32 2d 61 65 31 31 2d 35 65 33 33 33 63 62 37 39 35 62 66 } //1 $ef0f6e11-2917-45a2-ae11-5e333cb795bf
		$a_81_1 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_2 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_81_3 = {6c 73 76 44 61 64 6f 73 5f 43 6c 69 63 6b } //1 lsvDados_Click
		$a_81_4 = {62 74 6e 45 78 63 6c 75 69 72 5f 43 6c 69 63 6b } //1 btnExcluir_Click
		$a_81_5 = {43 6f 6e 74 61 69 6e 73 4b 65 79 } //1 ContainsKey
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}