
rule Trojan_Win32_Zenpak_GNE_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.GNE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {68 6c 98 55 89 75 ?? b8 ?? ?? ?? ?? 01 45 ?? 8b 45 ?? 8a 04 08 88 04 39 41 3b 0d } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Zenpak_GNE_MTB_2{
	meta:
		description = "Trojan:Win32/Zenpak.GNE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 89 c2 89 1d ?? ?? ?? ?? 4a 83 c2 ?? 83 ea ?? 40 8d 05 ?? ?? ?? ?? 31 38 8d 05 ?? ?? ?? ?? 50 c3 48 40 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Zenpak_GNE_MTB_3{
	meta:
		description = "Trojan:Win32/Zenpak.GNE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {01 20 31 c2 4a 4a 83 f0 ?? e8 ?? ?? ?? ?? c3 01 c2 89 f0 50 8f 05 ?? ?? ?? ?? 31 d0 31 d0 89 2d ?? ?? ?? ?? e8 ?? ?? ?? ?? 29 d0 89 f8 50 8f 05 ?? ?? ?? ?? 8d 05 ?? ?? ?? ?? 31 18 b9 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}