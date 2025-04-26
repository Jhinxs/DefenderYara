
rule Trojan_Win32_Zenpak_RC_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {f7 e1 c1 ea 02 6b c2 12 8b 4c 24 ?? 29 c1 89 c8 83 e8 04 89 4c 24 ?? 89 44 24 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RC_MTB_2{
	meta:
		description = "Trojan:Win32/Zenpak.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {f7 e1 c1 ea 02 6b c2 12 8b 4c 24 ?? 29 c1 89 c8 83 e8 07 89 4c 24 ?? 89 44 24 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RC_MTB_3{
	meta:
		description = "Trojan:Win32/Zenpak.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {89 18 ba 09 00 00 00 83 e8 06 42 83 c0 03 01 2d ?? ?? ?? ?? 83 ea 01 4a 8d 05 ?? ?? ?? ?? 31 38 e9 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RC_MTB_4{
	meta:
		description = "Trojan:Win32/Zenpak.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {31 c2 40 89 1d ?? ?? ?? ?? 8d 05 ?? ?? ?? ?? 89 28 83 c0 02 31 3d ?? ?? ?? ?? ba 06 00 00 00 89 d0 48 89 f0 50 8f 05 ?? ?? ?? ?? e8 ?? ?? ff ff c3 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RC_MTB_5{
	meta:
		description = "Trojan:Win32/Zenpak.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 b8 07 00 00 00 29 c2 8d 05 ?? ?? ?? ?? 89 38 83 f0 04 42 89 c2 89 e8 50 8f 05 ?? ?? ?? ?? 31 c2 48 31 35 ?? ?? ?? ?? 89 d8 50 8f 05 ?? ?? ?? ?? e8 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}