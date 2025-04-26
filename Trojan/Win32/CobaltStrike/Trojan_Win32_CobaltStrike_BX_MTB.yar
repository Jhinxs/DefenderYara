
rule Trojan_Win32_CobaltStrike_BX_MTB{
	meta:
		description = "Trojan:Win32/CobaltStrike.BX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b6 0c 37 0f b6 c2 03 c8 0f b6 c1 8b 4d ?? 8a 04 38 30 04 0b 43 8b 4d ?? 3b 5d ?? 72 c5 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}