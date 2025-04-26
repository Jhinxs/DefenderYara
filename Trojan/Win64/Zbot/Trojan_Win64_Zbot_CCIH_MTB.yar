
rule Trojan_Win64_Zbot_CCIH_MTB{
	meta:
		description = "Trojan:Win64/Zbot.CCIH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f af c1 89 44 24 ?? 35 ?? ?? ?? ?? 89 44 24 ?? 89 c8 35 ?? ?? ?? ?? 89 44 24 ?? 8b 44 24 ?? 3b 44 24 ?? 75 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}