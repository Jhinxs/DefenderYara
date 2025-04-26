
rule Trojan_Win64_CobaltStrike_LD_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.LD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {41 0f b6 54 3b ?? 8d 42 ?? 8b cb 3c ?? b8 ?? ?? ?? ?? 0f 46 c8 0a d1 0f be c2 49 33 c2 0f b6 c8 41 c1 ea ?? 48 8d 05 ?? ?? ?? ?? 44 33 14 88 41 f7 d2 41 81 fa ?? ?? ?? ?? 0f 84 ?? ?? ?? ?? ff c6 41 3b f4 0f 82 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}