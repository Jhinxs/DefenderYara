
rule Trojan_BAT_Formbook_EZ_MTB{
	meta:
		description = "Trojan:BAT/Formbook.EZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,2a 00 2a 00 0a 00 00 "
		
	strings :
		$a_81_0 = {24 65 30 63 61 32 35 35 66 2d 63 63 66 31 2d 34 34 64 31 2d 38 64 36 34 2d 62 63 31 64 31 36 64 30 36 61 39 63 } //30 $e0ca255f-ccf1-44d1-8d64-bc1d16d06a9c
		$a_81_1 = {24 61 35 66 66 35 62 37 62 2d 64 63 38 66 2d 34 65 64 31 2d 61 32 61 31 2d 33 61 39 37 62 61 61 34 38 62 64 66 } //30 $a5ff5b7b-dc8f-4ed1-a2a1-3a97baa48bdf
		$a_81_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //10 CreateInstance
		$a_81_3 = {41 63 74 69 76 61 74 6f 72 } //10 Activator
		$a_81_4 = {61 32 65 34 61 30 30 66 33 37 37 66 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 a2e4a00f377f.Resources.resources
		$a_81_5 = {53 74 61 67 65 4f 70 76 6f 6c 67 69 6e 67 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //1 StageOpvolging.Form1.resources
		$a_81_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_8 = {48 6f 74 65 6c 55 74 69 6c 69 74 79 } //1 HotelUtility
		$a_81_9 = {57 65 62 52 65 71 75 65 73 74 } //1 WebRequest
	condition:
		((#a_81_0  & 1)*30+(#a_81_1  & 1)*30+(#a_81_2  & 1)*10+(#a_81_3  & 1)*10+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1) >=42
 
}