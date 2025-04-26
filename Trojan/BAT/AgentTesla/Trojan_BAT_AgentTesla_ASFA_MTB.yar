
rule Trojan_BAT_AgentTesla_ASFA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASFA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 09 07 8e 69 5d 02 07 09 07 8e 69 5d 91 08 09 08 6f ?? 00 00 0a 5d 6f ?? 00 00 0a 61 28 ?? 00 00 0a 07 09 17 58 07 8e 69 5d 91 28 ?? 00 00 0a 59 20 00 01 00 00 58 28 } //1
		$a_01_1 = {47 00 45 00 47 00 37 00 46 00 37 00 51 00 35 00 44 00 47 00 35 00 50 00 32 00 32 00 43 00 35 00 53 00 38 00 43 00 46 00 5a 00 35 00 } //1 GEG7F7Q5DG5P22C5S8CFZ5
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}