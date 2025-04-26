
rule Ransom_MSIL_WormLocker_DC_MTB{
	meta:
		description = "Ransom:MSIL/WormLocker.DC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {72 61 6e 73 6f 6d 5f 76 6f 69 63 65 2e 76 62 73 } //1 ransom_voice.vbs
		$a_81_1 = {57 6f 72 6d 4c 6f 63 6b 65 72 } //1 WormLocker
		$a_81_2 = {77 6f 72 6d 5f 74 6f 6f 6c 2e 73 79 73 } //1 worm_tool.sys
		$a_81_3 = {65 6e 63 72 79 70 74 65 64 } //1 encrypted
		$a_81_4 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //1 DisableTaskMgr
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}