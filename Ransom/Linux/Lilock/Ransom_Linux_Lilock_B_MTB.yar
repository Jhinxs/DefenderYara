
rule Ransom_Linux_Lilock_B_MTB{
	meta:
		description = "Ransom:Linux/Lilock.B!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {8a 14 06 83 f2 36 88 14 04 48 ff c0 48 3d 80 00 00 00 75 ?? 48 89 cf e8 ?? ?? ?? ?? 48 89 e6 ba 80 00 00 00 e8 ?? ?? ?? ?? 48 83 ec 80 c3 } //2
		$a_03_1 = {40 0f b6 d6 40 8a b0 ?? ?? ?? ?? 8a 81 ?? ?? ?? ?? 44 89 c1 8a 92 ?? ?? ?? ?? c1 e9 03 44 32 89 ?? ?? ?? ?? 44 88 c9 } //1
		$a_03_2 = {48 89 f3 48 01 f5 b8 10 00 00 00 48 83 ec 10 48 39 eb 74 ?? 83 f8 10 75 ?? 41 0f 10 84 24 f0 00 00 00 4c 89 e6 48 89 e7 0f 11 04 24 e8 ?? ?? ?? ?? b8 0f 00 00 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}