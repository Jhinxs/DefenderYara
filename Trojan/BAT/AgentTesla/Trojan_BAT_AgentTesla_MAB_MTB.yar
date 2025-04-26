
rule Trojan_BAT_AgentTesla_MAB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 "
		
	strings :
		$a_01_0 = {57 17 a2 0b 09 1f 00 00 00 fa 01 33 00 16 00 00 01 00 00 00 cf 00 00 00 2b 00 00 00 d0 00 00 00 06 02 00 00 52 01 00 00 12 00 00 00 8a 01 00 00 82 00 00 00 36 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 15 } //5
		$a_01_1 = {32 62 63 36 65 32 32 62 2d 32 33 31 61 2d 34 62 37 33 2d 61 30 65 61 2d 35 37 64 66 33 61 65 61 38 65 65 35 } //5 2bc6e22b-231a-4b73-a0ea-57df3aea8ee5
		$a_01_2 = {53 74 72 69 63 6b 6c 65 72 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //5 Strickler.Resources.resources
		$a_01_3 = {48 69 64 65 4d 6f 64 75 6c 65 4e 61 6d 65 41 74 74 72 69 62 75 74 65 } //1 HideModuleNameAttribute
		$a_01_4 = {73 65 74 5f 53 68 6f 72 74 63 75 74 4b 65 79 73 } //1 set_ShortcutKeys
		$a_01_5 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=18
 
}