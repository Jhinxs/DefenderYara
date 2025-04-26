
rule Trojan_BAT_AgentTesla_JOB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JOB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {11 04 09 06 18 5a 18 6f ?? ?? ?? 0a 1f 10 28 ?? ?? ?? 0a 6f ?? ?? ?? 0a 06 17 58 0a 06 09 6f ?? ?? ?? 0a 18 5b fe 04 13 05 11 05 2d d3 } //1
		$a_01_1 = {4e 78 74 4d 61 6e 61 67 65 72 56 33 } //1 NxtManagerV3
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}