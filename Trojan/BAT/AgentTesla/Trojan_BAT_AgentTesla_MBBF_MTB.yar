
rule Trojan_BAT_AgentTesla_MBBF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBBF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_01_0 = {24 61 62 62 31 36 65 31 35 2d 66 39 64 66 2d 34 34 37 30 2d 62 38 64 62 2d 32 35 63 33 62 34 30 36 39 35 38 33 } //10 $abb16e15-f9df-4470-b8db-25c3b4069583
		$a_81_1 = {44 6f 64 67 65 } //1 Dodge
		$a_81_2 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
		$a_81_3 = {53 70 6c 69 74 } //1 Split
		$a_81_4 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
		$a_81_5 = {52 65 70 6c 61 63 65 } //1 Replace
	condition:
		((#a_01_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=15
 
}