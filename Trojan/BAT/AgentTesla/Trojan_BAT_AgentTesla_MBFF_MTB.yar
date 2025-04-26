
rule Trojan_BAT_AgentTesla_MBFF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBFF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {11 05 17 58 11 ?? 5d 13 ?? 07 11 ?? 91 08 11 ?? 91 61 13 0b 20 00 01 00 00 13 0c 11 0b 07 11 ?? 91 59 11 ?? 58 11 ?? 5d 13 } //1
		$a_01_1 = {35 00 37 00 46 00 47 00 32 00 47 00 38 00 45 00 51 00 37 00 42 00 43 00 38 00 38 00 38 00 35 00 48 00 57 00 55 00 47 00 38 00 38 00 } //1 57FG2G8EQ7BC8885HWUG88
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}