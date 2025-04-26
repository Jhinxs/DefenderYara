
rule Trojan_Win32_Vidar_GFP_MTB{
	meta:
		description = "Trojan:Win32/Vidar.GFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c8 33 d2 8b c7 f7 f1 8b 85 ?? ?? ?? ?? 83 c4 04 8a 0c 02 8b 95 ?? ?? ?? ?? 8d 04 17 8b 95 ?? ?? ?? ?? 32 0c 02 88 08 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}