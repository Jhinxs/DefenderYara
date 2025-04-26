
rule Trojan_BAT_AgentTesla_JMA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JMA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 09 06 09 18 d8 18 6f ?? ?? ?? 0a 1f 10 28 ?? ?? ?? 0a b4 9c 09 17 d6 0d 09 08 31 e3 } //1
		$a_81_1 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1) >=2
 
}