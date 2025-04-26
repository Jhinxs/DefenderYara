
rule Trojan_Win64_Trubot_ZF_MTB{
	meta:
		description = "Trojan:Win64/Trubot.ZF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f af c8 8b c1 33 d2 b9 05 00 00 00 f7 f1 8b c2 88 44 24 ?? 0f b6 44 24 ?? 0f b6 c8 8b 05 ?? ?? ?? ?? d3 e8 0f be 4c 24 ?? 0f b6 54 24 ?? 03 ca 2b 0d ?? ?? ?? ?? 33 c1 0f be 0d ?? ?? ?? ?? 2b c8 8b c1 88 05 ?? ?? ?? ?? 0f be 44 24 ?? 99 b9 05 00 00 00 f7 f9 8b 0d ?? ?? ?? ?? 03 c8 8b c1 88 44 24 ?? e9 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}