
rule Trojan_Win64_CobaltStrike_WA_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.WA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b cb f7 eb 03 d3 ff c3 c1 fa ?? 8b c2 c1 e8 ?? 03 d0 6b c2 ?? 2b c8 48 63 c1 42 8a 0c 00 43 32 0c 0a 41 88 09 49 ff c1 49 83 ef ?? 74 ?? 4c 8b 05 ?? ?? ?? ?? eb } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}