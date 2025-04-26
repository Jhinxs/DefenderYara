
rule Trojan_Win64_IcedID_MXM_MTB{
	meta:
		description = "Trojan:Win64/IcedID.MXM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {8b 04 24 99 eb ?? 33 c8 8b c1 eb ?? 48 98 48 8b 8c 24 ?? ?? ?? ?? eb ?? 0f b6 04 01 8b 4c 24 60 eb } //1
		$a_03_1 = {8b 84 24 08 ?? ?? ?? 39 04 24 7d ?? eb ?? 88 04 0a eb ?? 48 81 c4 f8 00 00 00 e9 ?? ?? ?? ?? c7 04 24 } //1
		$a_01_2 = {57 67 6a 61 73 62 68 61 6a } //1 Wgjasbhaj
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}