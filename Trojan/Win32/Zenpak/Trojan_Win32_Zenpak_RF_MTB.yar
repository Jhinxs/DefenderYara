
rule Trojan_Win32_Zenpak_RF_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {31 38 83 f2 07 83 f2 04 8d 05 ?? ?? ?? ?? 01 30 01 c2 83 c2 03 48 89 d8 50 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RF_MTB_2{
	meta:
		description = "Trojan:Win32/Zenpak.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {50 c3 83 f2 02 83 c2 09 83 f0 08 01 1d ?? ?? ?? ?? 40 89 3d ?? ?? ?? ?? b9 02 00 00 00 e2 ce } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RF_MTB_3{
	meta:
		description = "Trojan:Win32/Zenpak.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {90 55 89 e5 50 8b 45 08 31 c9 81 c1 18 00 00 00 89 45 fc 8b 45 fc 05 d0 00 00 00 05 e0 00 00 00 01 c8 89 45 fc } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RF_MTB_4{
	meta:
		description = "Trojan:Win32/Zenpak.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b9 89 88 88 88 89 45 ?? f7 e1 c1 ea 03 6b c2 0f 8b 4d ?? 29 c1 89 c8 83 e8 ?? 89 4d ?? 89 45 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RF_MTB_5{
	meta:
		description = "Trojan:Win32/Zenpak.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b9 89 88 88 88 89 44 24 ?? f7 e1 c1 ea 03 6b c2 0f 8b 4c 24 ?? 29 c1 83 c9 04 83 e9 07 89 4c 24 ?? 74 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RF_MTB_6{
	meta:
		description = "Trojan:Win32/Zenpak.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {89 c8 8b 55 ?? f7 e2 c1 ea 02 6b c2 12 29 c1 89 c8 83 e8 02 89 4d ?? 89 45 ?? 0f 84 ?? ?? ff ff eb 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RF_MTB_7{
	meta:
		description = "Trojan:Win32/Zenpak.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b9 f1 f0 f0 f0 89 44 24 ?? f7 e1 c1 ea 04 6b c2 11 8b 4c 24 ?? 29 c1 89 c8 83 e8 ?? 89 4c 24 ?? 89 44 24 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RF_MTB_8{
	meta:
		description = "Trojan:Win32/Zenpak.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b6 fb 01 fe 81 e6 ff 00 00 00 8b 3d ?? ?? ?? ?? 81 c7 9e f4 ff ff 89 3d ?? ?? ?? ?? 8b 7d ec 8a 1c 0f 8b 7d e4 32 1c 37 8b 75 e8 88 1c 0e } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RF_MTB_9{
	meta:
		description = "Trojan:Win32/Zenpak.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {83 e8 09 83 f0 08 8d 05 ?? ?? ?? ?? 89 28 8d 05 ?? ?? ?? ?? 31 18 83 f2 07 40 40 01 3d ?? ?? ?? ?? 31 c2 8d 05 ?? ?? ?? ?? 31 30 8d 05 ?? ?? ?? ?? ff e0 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RF_MTB_10{
	meta:
		description = "Trojan:Win32/Zenpak.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {80 38 b8 0f 94 c1 88 8d ?? fe ff ff b8 01 00 00 00 8a 8d ?? fe ff ff f6 c1 01 89 85 ?? fe ff ff 75 ?? eb 90 09 05 00 a1 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RF_MTB_11{
	meta:
		description = "Trojan:Win32/Zenpak.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {29 c2 ba 0a 00 00 00 31 25 ?? ?? ?? ?? 29 c2 4a 01 d0 b9 02 00 00 00 e2 21 01 d0 89 f8 50 8f 05 ?? ?? ?? ?? ba 04 00 00 00 b8 05 00 00 00 31 1d ?? ?? ?? ?? e9 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Zenpak_RF_MTB_12{
	meta:
		description = "Trojan:Win32/Zenpak.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {42 29 d0 89 1d ?? ?? ?? ?? 4a 8d 05 ?? ?? ?? ?? 89 30 e9 ?? ?? ff ff c3 42 29 d0 29 d0 31 2d ?? ?? ?? ?? 31 c2 89 d0 83 e8 07 8d 05 ?? ?? ?? ?? 31 38 e8 ?? ff ff ff c3 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}