
rule Trojan_BAT_AgentTesla_CCB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CCB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {09 11 05 02 11 05 91 08 61 06 11 04 91 61 d2 9c 11 04 03 6f ?? ?? ?? 0a 17 59 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}