
rule VirTool_Win32_NimPlant_A_MTB{
	meta:
		description = "VirTool:Win32/NimPlant.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_81_0 = {6c 69 73 74 65 6e 65 72 54 79 70 65 } //1 listenerType
		$a_81_1 = {6c 69 73 74 65 6e 65 72 48 6f 73 74 } //1 listenerHost
		$a_81_2 = {6c 69 73 74 65 6e 65 72 49 70 } //1 listenerIp
		$a_81_3 = {6c 69 73 74 65 6e 65 72 50 6f 72 74 } //1 listenerPort
		$a_81_4 = {72 65 67 69 73 74 65 72 50 61 74 68 } //1 registerPath
		$a_81_5 = {73 6c 65 65 70 4a 69 74 74 65 72 } //1 sleepJitter
		$a_81_6 = {74 61 73 6b 50 61 74 68 } //1 taskPath
		$a_81_7 = {75 73 65 72 41 67 65 6e 74 } //1 userAgent
		$a_81_8 = {4e 69 6d 50 6c 61 6e 74 } //1 NimPlant
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=9
 
}