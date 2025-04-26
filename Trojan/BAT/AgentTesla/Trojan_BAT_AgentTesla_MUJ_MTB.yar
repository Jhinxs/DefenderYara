
rule Trojan_BAT_AgentTesla_MUJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MUJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 03 00 00 "
		
	strings :
		$a_02_0 = {02 03 05 03 8e 69 5d 91 05 04 03 8e 69 5d d6 04 5f 61 b4 28 ?? ?? ?? ?? 10 00 } //10
		$a_02_1 = {02 03 05 03 8e 69 5d 91 05 04 03 8e 69 5d d6 04 5f 61 b4 28 ?? ?? ?? ?? fe 0b 00 00 } //10
		$a_02_2 = {02 03 05 03 8e 69 5d 91 05 04 03 8e 69 5d d6 04 5f [0-28] 61 b4 28 ?? ?? ?? ?? fe 0b 00 00 } //10
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_02_2  & 1)*10) >=10
 
}