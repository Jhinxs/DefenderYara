
rule Trojan_Win64_BankerPacker_IA_MTB{
	meta:
		description = "Trojan:Win64/BankerPacker.IA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {4c 63 c0 b8 ?? ?? ?? ?? f7 ef c1 fa ?? 8b c2 c1 e8 ?? 03 d0 6b c2 ?? 8b cf 2b c8 48 63 c1 41 8a 0c 18 42 32 8c 30 ?? ?? ?? ?? 48 8b 44 24 40 88 0c 06 ff c7 48 ff c6 48 63 c7 48 3b 44 24 ?? 0f 82 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}