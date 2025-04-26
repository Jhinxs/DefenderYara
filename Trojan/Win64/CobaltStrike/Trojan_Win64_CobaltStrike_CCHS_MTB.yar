
rule Trojan_Win64_CobaltStrike_CCHS_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.CCHS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 8b 4d f0 48 8d 44 24 68 48 89 44 24 28 45 33 c9 48 89 b4 24 28 01 00 00 45 33 c0 48 8d 35 ?? ?? ?? ?? 33 d2 48 89 74 24 20 ff 15 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}