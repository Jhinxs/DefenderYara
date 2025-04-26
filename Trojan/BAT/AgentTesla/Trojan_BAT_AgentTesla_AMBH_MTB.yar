
rule Trojan_BAT_AgentTesla_AMBH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AMBH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 00 06 18 6f ?? 00 00 0a 00 06 03 28 ?? 00 00 0a 6f ?? 00 00 0a 00 06 6f ?? 00 00 0a 0b 07 02 16 02 8e 69 6f ?? 00 00 0a 0c } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_AgentTesla_AMBH_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.AMBH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_01_0 = {30 00 43 00 32 00 30 00 44 00 43 00 3c 00 3e 00 3c 00 3e 00 3c 00 3e 00 30 00 42 00 32 00 30 00 34 00 43 00 30 00 34 00 3c 00 3e 00 3c 00 3e 00 30 00 37 00 30 00 38 00 31 00 42 00 35 00 41 00 35 00 39 00 33 00 3c 00 3e } //2
		$a_01_1 = {34 00 44 00 35 00 41 00 39 00 3c 00 3e 00 3c 00 3e 00 33 00 3c 00 3e 00 3c 00 3e 00 3c 00 3e 00 30 00 34 00 3c 00 3e 00 3c 00 3e 00 3c 00 3e 00 46 00 46 00 46 00 46 00 3c 00 3e 00 3c 00 3e 00 42 00 38 00 } //2 4D5A9<><>3<><><>04<><><>FFFF<><>B8
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}