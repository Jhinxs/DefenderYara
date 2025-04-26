
rule Ransom_Win64_BazarCrypt_SV_MTB{
	meta:
		description = "Ransom:Win64/BazarCrypt.SV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_03_0 = {45 33 c9 45 8b c4 33 d2 48 8b ?? ?? ?? 00 00 00 ff 15 ?? ?? ?? ?? 85 c0 0f 84 ?? ?? ff ff ff d3 b9 00 0c 00 00 ff 15 } //2
		$a_03_1 = {ba 61 1e 00 00 41 b8 14 00 00 00 4c 8d 25 ?? ?? ?? ?? 49 8b cc ff d3 48 8b d8 48 8b d0 49 8b cc ff d7 48 8b f8 48 8b d3 49 8b cc ff 15 } //2
		$a_03_2 = {ba 01 68 00 00 48 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 85 c0 0f 84 ?? ?? ff ff 48 8d 0d 97 d7 01 00 e8 ?? ?? 00 00 44 8b c8 8b 54 ?? ?? 33 c9 41 b8 00 10 00 00 ff 15 ?? ?? ?? ?? 48 8b d8 44 8b ?? ?? ?? 48 8b d7 48 8b c8 e8 ca 25 00 00 44 8b ?? ?? ?? 44 89 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2) >=6
 
}