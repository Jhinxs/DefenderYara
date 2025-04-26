
rule Trojan_BAT_AgentTesla_IA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.IA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 "
		
	strings :
		$a_02_0 = {06 02 07 6f ?? ?? ?? 0a 03 07 03 6f ?? ?? ?? 0a 5d 6f ?? ?? ?? 0a 61 d1 6f ?? ?? ?? 0a 26 07 17 58 0b 07 02 6f ?? ?? ?? 0a 32 d5 } //10
		$a_81_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_2 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_81_3 = {78 6f 72 65 64 53 74 72 69 6e 67 } //1 xoredString
	condition:
		((#a_02_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=13
 
}
rule Trojan_BAT_AgentTesla_IA_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.IA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1c 00 11 00 00 "
		
	strings :
		$a_81_0 = {6a 66 64 73 69 6f 66 73 64 61 6f 66 } //20 jfdsiofsdaof
		$a_81_1 = {6a 66 61 69 61 77 64 64 6b 66 6b } //20 jfaiawddkfk
		$a_81_2 = {68 6e 62 7a 64 66 69 6b 65 61 6f } //20 hnbzdfikeao
		$a_81_3 = {6a 66 73 65 69 65 6f 66 71 77 65 } //20 jfseieofqwe
		$a_81_4 = {6e 73 64 67 66 6a 65 66 75 6a 65 32 } //20 nsdgfjefuje2
		$a_81_5 = {6d 6b 6a 73 65 66 6f 33 64 66 } //20 mkjsefo3df
		$a_81_6 = {6a 67 73 64 69 66 73 61 6f 66 67 32 } //20 jgsdifsaofg2
		$a_81_7 = {6a 66 64 61 77 64 61 77 6f } //20 jfdawdawo
		$a_81_8 = {6e 73 64 66 75 6a 65 69 6f 66 32 31 } //20 nsdfujeiof21
		$a_81_9 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
		$a_81_10 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 ToBase64String
		$a_81_11 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //1 get_CurrentDomain
		$a_81_12 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_81_13 = {52 65 73 6f 6c 76 65 53 69 67 6e 61 74 75 72 65 } //1 ResolveSignature
		$a_81_14 = {4c 6f 61 64 4d 6f 64 75 6c 65 } //1 LoadModule
		$a_81_15 = {43 6f 6e 76 65 72 74 } //1 Convert
		$a_81_16 = {47 65 74 54 79 70 65 73 } //1 GetTypes
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*20+(#a_81_2  & 1)*20+(#a_81_3  & 1)*20+(#a_81_4  & 1)*20+(#a_81_5  & 1)*20+(#a_81_6  & 1)*20+(#a_81_7  & 1)*20+(#a_81_8  & 1)*20+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1+(#a_81_15  & 1)*1+(#a_81_16  & 1)*1) >=28
 
}