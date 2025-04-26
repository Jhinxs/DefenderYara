
rule Trojan_Win64_CobaltStrike_M_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b6 84 3d ?? ?? ?? ?? 43 8b 54 84 ?? 48 ff c7 41 02 c2 02 c2 49 3b fb 44 0f b6 d0 49 0f 4d fd 49 ff c0 43 8b 44 94 ?? 43 89 44 84 ?? 43 89 54 94 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}