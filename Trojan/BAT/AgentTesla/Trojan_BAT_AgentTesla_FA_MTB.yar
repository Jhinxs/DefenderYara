
rule Trojan_BAT_AgentTesla_FA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.FA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 "
		
	strings :
		$a_02_0 = {06 07 16 20 00 10 00 00 6f ?? ?? ?? 0a 0d 09 16 fe 02 13 04 11 04 2c 0c 00 08 07 16 09 6f ?? ?? ?? 0a ?? ?? ?? 09 16 fe 02 13 05 11 05 2d d0 08 6f ?? ?? ?? 0a 13 06 de 16 08 2c 07 08 6f ?? ?? ?? 0a 00 dc } //10
		$a_81_1 = {47 5a 49 44 45 4b 4b 4b 4b } //1 GZIDEKKKK
		$a_81_2 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
		$a_81_3 = {41 45 53 5f 44 65 63 72 79 70 74 } //1 AES_Decrypt
	condition:
		((#a_02_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=13
 
}
rule Trojan_BAT_AgentTesla_FA_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.FA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 0d 00 00 "
		
	strings :
		$a_81_0 = {24 30 30 34 35 32 61 39 34 2d 35 39 37 61 2d 34 38 38 62 2d 39 31 36 36 2d 35 66 64 63 64 63 30 64 61 61 66 63 } //20 $00452a94-597a-488b-9166-5fdcdc0daafc
		$a_81_1 = {24 39 38 37 62 34 35 61 36 2d 61 65 64 35 2d 34 66 38 66 2d 62 37 38 34 2d 36 62 30 61 64 38 35 62 65 62 62 63 } //20 $987b45a6-aed5-4f8f-b784-6b0ad85bebbc
		$a_81_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_3 = {4c 69 67 68 74 57 61 74 63 68 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //1 LightWatch.My.Resources
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_5 = {46 6f 72 67 65 2e 54 65 6d 70 6c 61 74 69 6e 67 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //1 Forge.Templating.My.Resources
		$a_81_6 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //1 DebuggerStepThroughAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_8 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_9 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_10 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
		$a_81_11 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_12 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*20+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1) >=24
 
}