
rule Ransom_Win64_Paradise_MKV_MTB{
	meta:
		description = "Ransom:Win64/Paradise.MKV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {4d 89 d5 41 33 78 ?? 45 33 7a ?? 45 33 5a ?? 03 4c 24 ?? 03 54 24 ?? 03 44 24 ?? 44 03 74 24 ?? 44 03 4c 24 ?? 44 8b 44 24 ?? 45 33 42 ?? 45 33 4a ?? 45 33 62 ?? 41 33 4d ?? 41 33 55 ?? 45 33 75 ?? 41 33 45 ?? 44 8b 54 24 ?? 45 33 55 ?? 83 44 24 ?? ?? 44 8b 6c 24 ?? 44 89 54 24 } //1
		$a_80_1 = {44 6f 20 6e 6f 74 20 74 72 79 20 74 6f 20 64 65 63 72 79 70 74 } //Do not try to decrypt  1
		$a_80_2 = {64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //delete shadows /all /quiet  1
		$a_80_3 = {44 6f 20 6e 6f 74 20 72 65 6e 61 6d 65 20 65 6e 63 72 79 70 74 65 64 20 66 69 6c 65 73 } //Do not rename encrypted files  1
	condition:
		((#a_03_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1) >=4
 
}