
rule Trojan_BAT_AgentTesla_NLC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NLC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {75 00 70 00 6c 00 6f 00 6f 00 64 00 65 00 72 00 2e 00 6e 00 65 00 74 00 2f 00 69 00 6d 00 67 00 2f 00 69 00 6d 00 61 00 67 00 65 00 2f } //1
		$a_01_1 = {24 64 65 65 36 62 33 34 34 2d 35 65 34 32 2d 34 31 66 61 2d 38 63 34 39 2d 62 61 32 35 62 32 32 62 65 64 39 37 } //1 $dee6b344-5e42-41fa-8c49-ba25b22bed97
		$a_81_2 = {47 65 74 42 79 74 65 41 72 72 61 79 41 73 79 6e 63 } //1 GetByteArrayAsync
		$a_81_3 = {48 6f 68 63 78 76 70 7a 77 2e 53 6f 66 78 63 61 6f 66 62 70 75 } //1 Hohcxvpzw.Sofxcaofbpu
		$a_01_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_01_5 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_01_6 = {47 65 74 4d 65 74 68 6f 64 73 } //1 GetMethods
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}