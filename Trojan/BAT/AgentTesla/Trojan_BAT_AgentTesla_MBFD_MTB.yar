
rule Trojan_BAT_AgentTesla_MBFD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBFD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {73 00 74 00 00 05 31 00 32 00 00 05 6e 00 64 00 00 05 31 00 33 00 00 05 72 00 64 00 00 0b 4e 00 69 00 67 00 68 00 74 00 00 05 4b 00 37 00 00 33 50 00 72 00 6f 00 74 00 6f 00 74 00 79 00 70 00 65 00 5f 00 54 00 6f 00 6b 00 65 00 6e 00 5f 00 49 00 6e 00 74 00 65 00 72 00 66 00 61 00 63 00 65 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}