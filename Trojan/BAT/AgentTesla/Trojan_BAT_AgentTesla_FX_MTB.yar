
rule Trojan_BAT_AgentTesla_FX_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.FX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_81_0 = {50 54 4d 2e 4d 61 69 6e 46 6f 72 6d 2e 72 65 73 6f 75 72 63 65 73 } //1 PTM.MainForm.resources
		$a_81_1 = {50 54 4d 2e 4f 50 49 43 2e 72 65 73 6f 75 72 63 65 73 } //1 PTM.OPIC.resources
		$a_81_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_3 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_81_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_5 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
		$a_81_6 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_81_7 = {4c 6f 67 67 65 72 } //1 Logger
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}
rule Trojan_BAT_AgentTesla_FX_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.FX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 10 00 00 "
		
	strings :
		$a_81_0 = {24 35 31 31 36 62 38 63 34 2d 37 64 61 31 2d 34 36 34 36 2d 38 33 64 61 2d 61 36 66 33 62 61 32 63 37 34 33 42 } //20 $5116b8c4-7da1-4646-83da-a6f3ba2c743B
		$a_81_1 = {24 65 66 30 66 36 65 31 31 2d 32 39 31 37 2d 34 35 61 32 2d 61 65 31 31 2d 35 65 33 33 33 63 62 37 39 35 62 66 } //20 $ef0f6e11-2917-45a2-ae11-5e333cb795bf
		$a_81_2 = {24 64 33 38 36 36 37 39 31 2d 38 37 33 66 2d 34 64 63 34 2d 61 36 39 35 2d 39 61 33 62 37 65 64 31 35 62 62 31 } //20 $d3866791-873f-4dc4-a695-9a3b7ed15bb1
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_4 = {4a 6f 6f 6f 4f 2e 53 54 55 42 2e 4f 6f 6f 6f 4a 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //1 JoooO.STUB.OoooJ.My.Resources
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_6 = {55 49 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //1 UI.My.Resources
		$a_81_7 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //1 DebuggerStepThroughAttribute
		$a_81_8 = {54 69 6d 65 73 65 72 69 65 73 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //1 Timeseries.My.Resources
		$a_81_9 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_10 = {47 6f 57 45 64 69 74 6f 72 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //1 GoWEditor.My.Resources
		$a_81_11 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_12 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_13 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
		$a_81_14 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_15 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*20+(#a_81_2  & 1)*20+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1+(#a_81_15  & 1)*1) >=24
 
}