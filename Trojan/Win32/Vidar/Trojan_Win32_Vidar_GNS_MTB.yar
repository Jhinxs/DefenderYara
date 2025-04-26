
rule Trojan_Win32_Vidar_GNS_MTB{
	meta:
		description = "Trojan:Win32/Vidar.GNS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {2b c2 8b d8 8b 85 ?? ?? ?? ?? 8d 0c 07 33 d2 8b c7 f7 f3 8b 5d 0c 8b 85 ?? ?? ?? ?? 8a 14 1a 32 14 08 88 11 8d 8d ?? ?? ?? ?? 51 ff d6 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}