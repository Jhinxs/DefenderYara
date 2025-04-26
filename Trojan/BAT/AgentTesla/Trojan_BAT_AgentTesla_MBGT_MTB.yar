
rule Trojan_BAT_AgentTesla_MBGT_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBGT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {72 2d 05 00 70 18 18 8d ?? 00 00 01 25 16 11 06 8c ?? 00 00 01 a2 25 17 11 07 8c ?? 00 00 01 a2 28 ?? 00 00 0a a5 ?? 00 00 01 13 08 12 08 28 ?? 00 00 0a 13 09 07 11 09 6f ?? 00 00 0a 11 05 17 58 13 05 } //1
		$a_01_1 = {48 00 65 00 61 00 72 00 74 00 52 00 61 00 74 00 65 00 } //1 HeartRate
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}