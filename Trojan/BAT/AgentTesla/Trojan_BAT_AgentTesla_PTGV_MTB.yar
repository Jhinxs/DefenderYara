
rule Trojan_BAT_AgentTesla_PTGV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PTGV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {17 8d 41 00 00 01 25 16 1f 2c 9d 28 ?? 00 00 0a 0d 7e 66 00 00 0a 13 04 16 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}