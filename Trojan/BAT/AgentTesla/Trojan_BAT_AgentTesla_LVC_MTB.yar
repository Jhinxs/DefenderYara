
rule Trojan_BAT_AgentTesla_LVC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LVC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {24 38 34 30 34 36 31 34 65 2d 32 30 65 37 2d 34 35 38 35 2d 38 66 30 33 2d 33 33 32 63 35 62 35 64 62 34 31 66 } //1 $8404614e-20e7-4585-8f03-332c5b5db41f
		$a_01_1 = {59 79 6f 7a 6b 66 53 72 4e 57 76 66 78 59 54 48 43 6d 55 4d 61 4e 4a 50 66 52 4f 6a } //1 YyozkfSrNWvfxYTHCmUMaNJPfROj
		$a_01_2 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //1 GetExportedTypes
		$a_01_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_4 = {54 6f 53 74 72 69 6e 67 } //1 ToString
		$a_01_5 = {4b 6c 65 6e 65 78 } //1 Klenex
		$a_01_6 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_01_7 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_01_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}