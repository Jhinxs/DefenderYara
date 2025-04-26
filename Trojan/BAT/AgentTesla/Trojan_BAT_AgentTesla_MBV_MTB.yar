
rule Trojan_BAT_AgentTesla_MBV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {34 00 44 00 1f 06 35 00 41 00 1f 06 39 00 21 00 1f 06 21 00 21 00 1f 06 21 00 33 00 1f 06 2b 00 21 00 21 00 1f 06 21 00 34 00 1f 06 2b 00 21 00 21 00 1f 06 46 00 46 00 1f 06 46 00 46 00 1f 06 2b 00 42 00 38 00 1f } //1
		$a_81_1 = {49 49 30 30 30 30 30 30 36 } //1 II0000006
		$a_81_2 = {43 58 58 41 43 } //1 CXXAC
	condition:
		((#a_01_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=3
 
}