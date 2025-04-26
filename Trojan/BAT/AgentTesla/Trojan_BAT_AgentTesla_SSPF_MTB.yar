
rule Trojan_BAT_AgentTesla_SSPF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.SSPF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 "
		
	strings :
		$a_03_0 = {1f 09 9a 0c 02 7b ?? ?? ?? 04 17 8d ?? ?? ?? 01 25 16 1f 5f 9d 6f ?? ?? ?? 0a 0d 08 19 8d ?? ?? ?? 01 25 16 09 16 9a a2 25 17 09 17 9a a2 } //4
	condition:
		((#a_03_0  & 1)*4) >=4
 
}