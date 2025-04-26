
rule Trojan_Win64_Dridex_GE_MTB{
	meta:
		description = "Trojan:Win64/Dridex.GE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_02_0 = {49 81 f3 00 b7 85 15 41 28 c0 48 89 8c 24 ?? ?? ?? ?? 48 8b b4 24 ?? ?? ?? ?? 48 c7 84 24 ?? ?? ?? ?? 1a 19 af 51 44 88 84 34 ?? ?? ?? ?? 48 21 c9 48 89 8c 24 ?? ?? ?? ?? 4c 03 9c 24 ?? ?? ?? ?? 4c 89 5c 24 ?? 49 39 d3 0f 84 } //10
		$a_80_1 = {4b 35 6e 6c 6e 6f 74 } //K5nlnot  1
		$a_80_2 = {72 72 70 69 6f 64 65 2e 70 64 62 } //rrpiode.pdb  1
	condition:
		((#a_02_0  & 1)*10+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1) >=12
 
}
rule Trojan_Win64_Dridex_GE_MTB_2{
	meta:
		description = "Trojan:Win64/Dridex.GE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 04 00 00 "
		
	strings :
		$a_02_0 = {44 8b 44 24 ?? 45 89 c2 44 89 d2 44 8b 44 24 ?? 44 8b 4c 24 ?? ff d0 } //1
		$a_02_1 = {4d 0f af c9 4c 89 8c 24 ?? ?? ?? ?? 45 89 d2 45 89 d1 48 89 54 24 ?? 4c 89 ca 45 89 d9 ff d0 } //1
		$a_80_2 = {61 69 6e 63 6c 75 64 69 6e 67 31 70 } //aincluding1p  10
		$a_80_3 = {72 61 69 73 69 6e 67 6e 35 38 37 } //raisingn587  10
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_80_2  & 1)*10+(#a_80_3  & 1)*10) >=21
 
}