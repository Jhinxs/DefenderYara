
rule Trojan_Win64_CobaltStrike_QH_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.QH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 98 48 01 c8 0f b6 08 8b 85 ?? ?? ?? ?? 48 98 0f b6 44 05 ?? 31 c8 88 02 83 85 ?? ?? ?? ?? ?? 83 85 ?? ?? ?? ?? ?? eb } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}