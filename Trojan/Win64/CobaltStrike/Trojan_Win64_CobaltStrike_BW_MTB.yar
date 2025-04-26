
rule Trojan_Win64_CobaltStrike_BW_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.BW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_01_0 = {b8 93 24 49 92 41 8b c9 41 f7 e9 41 03 d1 41 ff c1 c1 fa 02 8b c2 c1 e8 1f 03 d0 6b c2 07 2b c8 48 63 c1 0f b6 4c 84 20 42 30 4c 14 40 49 ff c2 4c 3b d7 7c } //5
	condition:
		((#a_01_0  & 1)*5) >=5
 
}
rule Trojan_Win64_CobaltStrike_BW_MTB_2{
	meta:
		description = "Trojan:Win64/CobaltStrike.BW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b f8 66 45 ?? ?? 75 ?? 45 33 db 41 ?? ?? ?? ?? ?? 49 8b c2 0f b7 00 41 8b c9 c1 c9 ?? 41 ff c3 03 c8 41 8b c3 49 03 c2 44 33 c9 80 38 ?? 75 ?? 48 ?? ?? ?? ?? ?? ?? ?? ff c2 46 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win64_CobaltStrike_BW_MTB_3{
	meta:
		description = "Trojan:Win64/CobaltStrike.BW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {44 2b c2 48 8d 0c ?? 49 63 d0 44 8b ?? ?? ?? ?? ?? 48 03 d1 48 8d 04 ?? 48 2b d0 48 2b 54 ?? ?? 48 03 54 ?? ?? 49 03 d4 48 03 94 ?? ?? ?? ?? ?? 42 0f b6 04 ?? 30 04 2b ff c3 48 83 ee 01 0f 85 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}