
rule Trojan_Win64_CobaltStrike_CH_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.CH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_01_0 = {89 ea 29 ca 48 63 ca 0f b6 0c 0e 32 0c 03 41 88 0c 06 b8 } //5
	condition:
		((#a_01_0  & 1)*5) >=5
 
}
rule Trojan_Win64_CobaltStrike_CH_MTB_2{
	meta:
		description = "Trojan:Win64/CobaltStrike.CH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {f7 ed c1 fa ?? 8b c2 c1 e8 ?? 03 d0 8b c5 ff c5 6b d2 ?? 2b c2 48 63 c8 48 8b 44 24 ?? 42 ?? ?? ?? ?? ?? ?? ?? 41 32 0c 00 41 88 0c 18 49 ff c0 3b 6c 24 ?? 72 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}