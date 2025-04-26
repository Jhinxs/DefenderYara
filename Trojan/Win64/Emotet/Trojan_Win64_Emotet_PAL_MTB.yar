
rule Trojan_Win64_Emotet_PAL_MTB{
	meta:
		description = "Trojan:Win64/Emotet.PAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {44 89 e0 41 ?? ed 44 [0-08] c1 fa ?? 29 c2 b8 ?? ?? ?? ?? 0f af d0 48 8b 05 ?? ?? ?? ?? 41 29 d4 4d 63 e4 42 0f b6 04 20 32 04 2b 88 04 2e 48 83 c5 01 48 81 fd ?? ?? ?? ?? 74 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win64_Emotet_PAL_MTB_2{
	meta:
		description = "Trojan:Win64/Emotet.PAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {f7 ef c1 fa ?? 8b c2 c1 e8 ?? 03 d0 6b c2 ?? 8b cf 2b c8 48 63 d1 48 8b 0d ?? ?? ?? ?? 0f b6 14 0a 43 32 54 3d 00 41 88 17 ff c7 49 ff c7 49 ff cc } //1
		$a_03_1 = {f7 ee c1 fa ?? 8b c2 c1 e8 ?? 03 d0 8b c6 ff c6 6b d2 ?? 2b c2 48 63 d0 48 8b 05 ?? ?? ?? ?? 8a 14 02 41 32 54 1d 00 88 13 48 ff c3 48 83 ef 01 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}