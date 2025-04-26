
rule Trojan_BAT_AgentTesla_CFB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CFB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {07 02 09 18 6f ?? ?? ?? 0a 1f 10 28 ?? ?? ?? 0a 84 28 ?? ?? ?? 0a 6f ?? ?? ?? 0a 26 09 18 d6 16 } //1
		$a_00_1 = {09 11 06 11 08 08 61 11 09 61 b4 9c 11 07 03 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}