
rule Trojan_Win64_CobaltStrike_AX_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.AX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {41 0f b6 44 1d ?? 30 04 3e 83 44 24 ?? ?? 81 7c 24 ?? ?? ?? ?? ?? 0f 85 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}
rule Trojan_Win64_CobaltStrike_AX_MTB_2{
	meta:
		description = "Trojan:Win64/CobaltStrike.AX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {42 65 61 63 6f 6e 5f 73 65 74 5f 4d 65 6d 6f 72 79 5f 61 74 74 72 69 62 75 74 65 73 } //1 Beacon_set_Memory_attributes
		$a_01_1 = {4e 63 34 38 38 33 65 34 4e 30 65 38 63 38 30 30 30 30 30 30 34 31 35 31 34 31 35 30 35 32 35 31 35 36 34 38 33 31 64 32 36 35 34 38 38 62 35 32 36 30 34 38 38 62 35 32 31 38 34 38 38 62 35 32 32 } //1 Nc4883e4N0e8c8000000415141505251564831d265488b5260488b5218488b522
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}