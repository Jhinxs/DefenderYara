
rule Trojan_Win64_BazarLdr_MTB{
	meta:
		description = "Trojan:Win64/BazarLdr!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b 54 24 40 0f ba e8 0c 44 8b c0 44 8b cb 33 c9 ff 15 [0-20] 4c 8d 4c ?? ?? 4c 8b c3 ba 01 00 00 00 e8 ?? ?? ff ff } //1
		$a_03_1 = {48 8b 4d 20 48 8d 45 f0 48 83 65 f0 00 48 8d 15 ?? ?? ?? ?? 48 89 44 24 28 45 33 c9 83 64 24 20 00 41 b8 ?? ?? ?? ?? ff 15 [0-30] 4c 8d 05 ?? ?? ?? ?? 49 ff c8 4c 03 c3 33 d2 41 8a 00 49 ff c8 42 88 44 22 0c 48 ff c2 48 3b d3 7c ed } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}