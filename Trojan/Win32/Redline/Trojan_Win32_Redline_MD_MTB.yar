
rule Trojan_Win32_Redline_MD_MTB{
	meta:
		description = "Trojan:Win32/Redline.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 4c 24 10 8b 44 24 14 03 44 24 ?? c7 05 ?? ?? ?? ?? 00 00 00 00 33 ?? 33 ?? 2b ?? 89 44 24 14 8b ?? c1 e0 04 89 44 24 10 8b 44 24 2c 01 44 24 10 81 3d ?? ?? ?? ?? be 01 00 00 8d ?? ?? 75 0e } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}
rule Trojan_Win32_Redline_MD_MTB_2{
	meta:
		description = "Trojan:Win32/Redline.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 02 00 00 "
		
	strings :
		$a_03_0 = {ff d3 80 34 3e ?? ff d3 80 04 3e ?? ff d3 80 34 3e [0-0c] 80 34 3e ?? ff d3 80 04 3e ?? ff d3 80 04 3e ?? ff d3 80 04 3e ?? 46 3b 74 24 ?? 0f 82 } //10
		$a_01_1 = {5f 4c 6f 61 64 45 6e 76 69 72 6f 6e 6d 65 6e 74 40 30 } //5 _LoadEnvironment@0
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*5) >=15
 
}
rule Trojan_Win32_Redline_MD_MTB_3{
	meta:
		description = "Trojan:Win32/Redline.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_01_0 = {31 c0 29 c8 88 84 24 97 01 00 00 0f b6 84 24 97 01 00 00 83 e8 24 88 84 24 97 01 00 00 8b 8c 24 98 01 00 00 0f b6 84 24 97 01 00 00 31 c8 88 84 24 97 01 00 00 0f b6 84 24 97 01 00 00 83 f0 ff 88 84 24 97 01 00 00 0f b6 8c 24 97 01 00 00 31 c0 29 c8 88 84 24 97 01 00 00 8a 8c 24 97 01 00 00 8b 84 24 98 01 00 00 88 8c 04 9d 01 00 00 8b 84 24 98 01 00 00 83 c0 01 89 84 24 98 01 00 00 e9 } //5
	condition:
		((#a_01_0  & 1)*5) >=5
 
}
rule Trojan_Win32_Redline_MD_MTB_4{
	meta:
		description = "Trojan:Win32/Redline.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {8b 55 f4 83 c2 01 89 55 f4 8b 45 f4 3b 45 10 73 ?? 8b 4d fc 03 4d f4 8b 55 f8 03 55 f4 8a 02 88 01 eb } //1
		$a_01_1 = {71 75 65 79 61 6c 6f 64 74 61 6b 65 79 74 69 6b 65 70 69 63 69 } //1 queyalodtakeytikepici
		$a_01_2 = {52 65 66 69 63 65 20 6a 61 72 65 77 20 64 69 6a 6f 73 20 6c 69 76 20 71 75 6f 6a 6f 6b } //1 Refice jarew dijos liv quojok
		$a_01_3 = {43 72 65 61 74 65 4d 75 74 65 78 57 } //1 CreateMutexW
		$a_01_4 = {47 65 74 43 50 49 6e 66 6f 45 78 41 } //1 GetCPInfoExA
		$a_01_5 = {43 6c 69 65 6e 74 54 6f 53 63 72 65 65 6e } //1 ClientToScreen
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule Trojan_Win32_Redline_MD_MTB_5{
	meta:
		description = "Trojan:Win32/Redline.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {0f 42 c1 8b 4d 04 0f 42 c3 03 0c 24 52 50 ff 75 00 51 c5 f8 77 ff 15 ?? ?? ?? ?? 8b 44 24 04 46 83 c5 28 0f b7 40 06 39 c6 72 } //1
		$a_01_1 = {66 72 41 51 42 63 38 57 73 61 31 78 56 50 66 76 4a 63 72 67 52 59 77 54 69 69 7a 73 32 74 72 51 46 36 39 41 7a 42 6c 61 78 33 43 46 33 45 44 4e 68 6d 33 73 6f 4c 42 50 68 37 31 59 65 78 75 69 } //1 frAQBc8Wsa1xVPfvJcrgRYwTiizs2trQF69AzBlax3CF3EDNhm3soLBPh71Yexui
		$a_81_2 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 4d 69 63 72 6f 73 6f 66 74 2e 4e 45 54 5c 46 72 61 6d 65 77 6f 72 6b 5c 76 34 2e 30 2e 33 30 33 31 39 5c 41 70 70 4c 61 75 6e 63 68 2e 65 78 65 } //1 C:\Windows\Microsoft.NET\Framework\v4.0.30319\AppLaunch.exe
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_81_2  & 1)*1) >=3
 
}