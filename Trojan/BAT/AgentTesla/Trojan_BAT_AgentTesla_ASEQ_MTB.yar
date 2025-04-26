
rule Trojan_BAT_AgentTesla_ASEQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASEQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {45 00 38 00 51 00 37 00 34 00 39 00 47 00 42 00 59 00 47 00 34 00 44 00 38 00 37 00 46 00 38 00 34 00 47 00 37 00 55 00 34 00 4a 00 } //1 E8Q749GBYG4D87F84G7U4J
		$a_01_1 = {51 00 75 00 61 00 6e 00 43 00 68 00 69 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 QuanChi.Properties.Resources
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}