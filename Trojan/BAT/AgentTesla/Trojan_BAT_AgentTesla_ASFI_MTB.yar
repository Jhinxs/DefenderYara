
rule Trojan_BAT_AgentTesla_ASFI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASFI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 11 06 07 8e 69 6a 5d d4 07 11 06 07 8e 69 6a 5d d4 91 08 11 06 08 8e 69 6a 5d d4 91 61 28 ?? 00 00 0a 07 11 06 17 6a 58 07 8e 69 6a 5d d4 91 28 ?? 00 00 0a 59 20 00 01 00 00 58 20 00 01 00 00 5d 28 ?? 00 00 0a 9c 00 11 06 17 6a 58 13 06 11 06 07 8e 69 17 59 09 17 58 5a 6a fe 02 16 fe 01 13 07 11 07 2d } //1
		$a_01_1 = {54 00 52 00 44 00 38 00 37 00 58 00 37 00 43 00 35 00 38 00 46 00 51 00 4b 00 42 00 47 00 47 00 35 00 42 00 48 00 42 00 47 00 37 00 } //1 TRD87X7C58FQKBGG5BHBG7
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}