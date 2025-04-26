
rule Trojan_Win32_Raccoon_RA_MTB{
	meta:
		description = "Trojan:Win32/Raccoon.RA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {8b 44 24 04 8b 4c 24 08 29 08 c2 08 00 55 8b ec 51 83 65 fc 00 8b 45 10 01 45 fc 8b 45 fc 33 45 0c 8b 4d 08 89 01 c9 c2 0c 00 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Raccoon_RA_MTB_2{
	meta:
		description = "Trojan:Win32/Raccoon.RA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {8b 44 24 04 8b 4c 24 08 29 08 c2 08 00 55 8b ec 51 83 65 fc 00 8b 45 10 90 01 45 fc 8b 45 fc 33 45 0c 8b 4d 08 89 01 c9 c2 0c 00 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Raccoon_RA_MTB_3{
	meta:
		description = "Trojan:Win32/Raccoon.RA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {01 45 fc 8b 45 08 8b 4d fc 31 08 c9 c2 08 00 [0-30] 55 8b ec 8b 4d 08 8b 01 89 45 08 8b 45 0c 01 45 08 8b 45 08 89 01 5d c2 08 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Raccoon_RA_MTB_4{
	meta:
		description = "Trojan:Win32/Raccoon.RA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c6 83 e0 03 8a 80 ?? ?? ?? ?? 30 86 ?? ?? ?? ?? 46 81 fe ?? ?? ?? ?? 72 e4 8d 44 24 08 c7 44 24 08 00 00 00 00 50 6a 40 68 7e 07 00 00 68 ?? ?? ?? ?? ff 15 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Raccoon_RA_MTB_5{
	meta:
		description = "Trojan:Win32/Raccoon.RA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {36 dd 96 53 81 45 ?? 38 dd 96 53 8b 4d ?? 8b ?? d3 e0 89 45 ?? 8b 45 ?? 01 45 } //1
		$a_01_1 = {81 00 e1 34 ef c6 c3 01 08 c3 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}