
rule Trojan_Win64_Emotetcrypt_KT_MTB{
	meta:
		description = "Trojan:Win64/Emotetcrypt.KT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {f7 eb c1 fa ?? 8b c2 c1 e8 ?? 03 d0 8b c3 ff c3 8d 0c 52 c1 e1 ?? 2b c1 48 63 c8 42 8a 04 09 43 32 04 02 41 88 00 49 ff c0 48 ff ce 74 ?? 4c 8b 0d ?? ?? ?? ?? eb } //1
		$a_03_1 = {f7 eb 03 d3 c1 fa ?? 8b c2 c1 e8 ?? 03 d0 6b c2 ?? 8b d3 ff c3 2b d0 4c 63 c2 48 8b 15 ?? ?? ?? ?? 45 8a 04 10 45 32 04 3f 44 88 07 48 ff c7 49 ff ce 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}