
rule Trojan_BAT_AgentTesla_RM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,23 00 23 00 09 00 00 "
		
	strings :
		$a_81_0 = {24 35 32 38 30 33 37 36 33 2d 30 63 33 38 2d 34 35 64 30 2d 38 64 66 39 2d 37 39 62 65 34 31 33 32 37 66 37 32 } //10 $52803763-0c38-45d0-8df9-79be41327f72
		$a_81_1 = {64 65 6c 62 74 6e 5f 43 6c 69 63 6b } //10 delbtn_Click
		$a_81_2 = {43 6f 6e 44 62 5f 43 6c 69 63 6b } //10 ConDb_Click
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_4 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_5 = {69 6e 73 65 72 74 5f 43 6c 69 63 6b } //1 insert_Click
		$a_81_6 = {67 65 74 5f 43 6f 6e 74 72 6f 6c 73 } //1 get_Controls
		$a_81_7 = {44 42 54 61 62 6c 65 49 6e 66 6f } //1 DBTableInfo
		$a_81_8 = {49 6e 73 65 72 74 44 61 74 61 } //1 InsertData
	condition:
		((#a_81_0  & 1)*10+(#a_81_1  & 1)*10+(#a_81_2  & 1)*10+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=35
 
}