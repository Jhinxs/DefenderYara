
rule Trojan_BAT_AgentTesla_MBZU_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBZU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {07 8e 69 5d 91 } //1
		$a_01_1 = {59 20 00 01 00 00 58 20 ff 00 00 00 5f d2 9c 00 11 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}