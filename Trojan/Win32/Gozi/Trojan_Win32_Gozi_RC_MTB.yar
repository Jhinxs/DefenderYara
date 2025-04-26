
rule Trojan_Win32_Gozi_RC_MTB{
	meta:
		description = "Trojan:Win32/Gozi.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {8d 44 01 fd 89 45 fc 8b 75 f0 2b ff 81 ef 75 03 00 00 03 ff ff e6 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Gozi_RC_MTB_2{
	meta:
		description = "Trojan:Win32/Gozi.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {8a 45 e0 02 c3 0f b6 c8 8b 02 d3 c8 83 c2 04 33 c7 2b c3 89 42 fc 4b 75 e7 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Gozi_RC_MTB_3{
	meta:
		description = "Trojan:Win32/Gozi.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {0f b7 58 14 8b ce 81 f1 0e 15 00 00 42 6b d2 28 03 d8 0f b7 c9 81 f6 5c 5f b2 69 03 da 89 4d f4 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Gozi_RC_MTB_4{
	meta:
		description = "Trojan:Win32/Gozi.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {8d 14 1b 2b d1 81 c2 e4 87 ff ff 0f b6 c2 6b c8 3e 8b c6 89 54 24 14 2b c3 05 e4 87 ff ff 8a d0 89 44 24 10 a3 d4 69 0d 01 2a d1 88 54 24 1b } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Gozi_RC_MTB_5{
	meta:
		description = "Trojan:Win32/Gozi.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b7 d1 8b c8 81 f1 ?? ?? ?? ?? 57 8b 3d ?? ?? ?? ?? 8b 0c 39 03 cf 0f b7 59 ?? 0f b7 71 ?? 43 6b db 28 03 f1 8b ce 8b f0 81 f6 ?? ?? ?? ?? 03 cb 03 f1 35 ?? ?? ?? ?? 89 55 ?? 89 45 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Gozi_RC_MTB_6{
	meta:
		description = "Trojan:Win32/Gozi.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {6f 4c 73 7a 6c 47 2e 64 6c 6c } //1 oLszlG.dll
		$a_01_1 = {53 38 44 53 31 51 35 78 6e 56 49 63 62 61 } //1 S8DS1Q5xnVIcba
		$a_01_2 = {55 79 4d 39 6b 6a 59 51 55 38 35 75 6d 32 33 67 } //1 UyM9kjYQU85um23g
		$a_01_3 = {56 75 4b 64 63 55 4a 38 68 48 51 4f 67 68 61 } //1 VuKdcUJ8hHQOgha
		$a_01_4 = {65 31 77 46 67 33 47 35 4e 61 71 4f } //1 e1wFg3G5NaqO
		$a_01_5 = {75 62 4a 73 45 34 44 47 6e 49 32 7a 58 65 } //1 ubJsE4DGnI2zXe
		$a_01_6 = {79 74 76 34 4c 36 75 4d 37 68 42 51 47 42 45 6d } //1 ytv4L6uM7hBQGBEm
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}