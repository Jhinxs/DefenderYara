
rule Trojan_Win64_IcedID_SH_MTB{
	meta:
		description = "Trojan:Win64/IcedID.SH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {8b 5d 10 66 01 da c1 ca 03 89 55 10 30 10 40 c1 ca 08 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win64_IcedID_SH_MTB_2{
	meta:
		description = "Trojan:Win64/IcedID.SH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {0f b6 04 01 8b 8c 24 ?? ?? ?? ?? eb ?? 33 c8 8b c1 eb } //1
		$a_03_1 = {48 8b 94 24 ?? ?? ?? ?? e9 ?? ?? ?? ?? f7 bc 24 ?? ?? ?? ?? 8b c2 eb ?? 83 84 24 ?? ?? ?? ?? ?? c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? eb } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}