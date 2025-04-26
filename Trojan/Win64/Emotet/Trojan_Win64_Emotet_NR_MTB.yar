
rule Trojan_Win64_Emotet_NR_MTB{
	meta:
		description = "Trojan:Win64/Emotet.NR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {ff c7 c1 fa ?? 8b c2 c1 e8 ?? 03 d0 6b c2 ?? 2b c8 48 63 c1 48 8d 0d ?? ?? ?? ?? 8a 04 08 42 32 04 36 41 88 06 49 ff c6 3b fd 72 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}