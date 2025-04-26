
rule Trojan_BAT_AgentTesla_MBKR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBKR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 11 07 07 8e 69 6a 5d d4 91 08 11 07 1f 16 6a 5d d4 91 61 28 ?? 00 00 0a 07 11 07 17 6a 58 07 8e 69 6a 5d d4 91 28 ?? 00 00 0a 59 20 00 01 00 00 58 20 00 01 00 00 5d } //1
		$a_01_1 = {41 00 35 00 32 00 52 00 37 00 35 00 32 00 36 00 34 00 34 00 34 00 4a 00 53 00 44 00 31 00 43 00 39 00 46 00 48 00 43 00 48 00 38 00 } //1 A52R7526444JSD1C9FHCH8
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}