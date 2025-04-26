
rule Trojan_BAT_AgentTesla_JSE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JSE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,2f 00 2f 00 0c 00 00 "
		
	strings :
		$a_81_0 = {5f 58 5f 58 30 46 54 5f 46 54 32 } //20 _X_X0FT_FT2
		$a_81_1 = {5f 58 5f 58 30 46 54 5f 46 54 31 } //20 _X_X0FT_FT1
		$a_81_2 = {5f 58 5f 54 53 53 33 } //1 _X_TSS3
		$a_81_3 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //1 TransformFinalBlock
		$a_81_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_81_5 = {50 61 72 61 6d 58 41 72 72 61 79 } //1 ParamXArray
		$a_81_6 = {50 61 72 61 6d 58 47 72 6f 75 70 } //1 ParamXGroup
		$a_81_7 = {53 79 73 74 65 6d 2e 41 63 74 69 76 61 74 6f 72 } //1 System.Activator
		$a_81_8 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_9 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
		$a_81_10 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_11 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*20+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1) >=47
 
}