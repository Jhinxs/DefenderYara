
rule Trojan_Win64_Emotet_BU_MTB{
	meta:
		description = "Trojan:Win64/Emotet.BU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {41 03 d1 41 ff c1 c1 fa ?? 8b c2 c1 e8 ?? 03 d0 6b c2 ?? 2b c8 48 63 c1 42 0f b6 0c 00 43 32 4c 13 ?? 41 88 4a ?? 48 ff cb 74 09 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}
rule Trojan_Win64_Emotet_BU_MTB_2{
	meta:
		description = "Trojan:Win64/Emotet.BU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {f7 ef c1 fa ?? 8b c2 c1 e8 ?? 03 d0 8b c7 ff c7 6b d2 ?? 2b c2 48 98 32 0c 18 4c 3b e6 41 88 4c 2c ff 7d } //2
		$a_03_1 = {f7 ef d1 fa 8b c2 c1 e8 ?? 03 d0 8b c7 ff c7 6b d2 ?? 2b c2 48 98 42 32 0c ?? 48 3b f3 42 88 4c 1e ff 7d } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=2
 
}