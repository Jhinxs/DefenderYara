
rule Trojan_Win64_CobaltStrikePacker_AA_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrikePacker.AA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 c7 c0 00 00 00 00 48 31 db 48 83 e1 00 48 29 ff 90 13 90 13 48 8b 14 24 48 8d 64 24 08 04 ?? 48 89 c6 04 ?? ff cf c1 ef ?? 48 31 fa 48 01 c8 48 8d 49 ?? 48 ff c0 48 29 c8 48 39 f9 75 ?? 84 c0 90 13 48 31 ca 48 83 e1 ?? 48 ff c8 88 02 48 31 fa 48 8d 5b ?? 48 39 f3 75 ?? 48 29 f3 48 01 da 48 31 fa ff e2 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}