
rule Trojan_Win64_CobaltStrike_AO_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.AO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 89 c2 89 d0 83 e0 01 02 04 11 83 e8 03 49 39 d0 88 04 11 48 8d 42 01 90 13 48 89 c2 89 d0 83 e0 01 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win64_CobaltStrike_AO_MTB_2{
	meta:
		description = "Trojan:Win64/CobaltStrike.AO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {ff c0 89 84 24 ?? ?? ?? ?? 48 63 84 24 ?? ?? ?? ?? 48 83 f8 ?? 73 ?? 48 63 84 24 ?? ?? ?? ?? 0f b6 84 04 ?? ?? ?? ?? 83 e8 ?? 48 63 8c 24 ?? ?? ?? ?? 88 84 0c ?? ?? ?? ?? eb } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}