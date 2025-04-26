
rule Trojan_Win32_Dexphot{
	meta:
		description = "Trojan:Win32/Dexphot,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {81 38 50 45 00 00 74 0f b8 ?? ?? ?? ?? e8 ?? ?? ?? ?? e9 ?? ?? ?? ?? 8b 45 ?? 50 68 00 20 00 00 8b 45 ?? 8b 40 50 50 8b 45 ?? 8b 40 34 50 6a ff e8 } //1
		$a_03_1 = {30 02 81 3d ?? ?? ?? ?? ?? ?? ?? ?? 77 ?? 81 3d ?? ?? ?? ?? ?? ?? ?? ?? 72 ?? 33 c9 b2 01 a1 90 09 1d 00 a0 ?? ?? ?? ?? 02 05 ?? ?? ?? ?? 02 05 ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 03 15 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule Trojan_Win32_Dexphot_2{
	meta:
		description = "Trojan:Win32/Dexphot,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {41 49 43 34 00 00 00 00 41 49 43 35 00 00 00 00 41 49 43 36 00 00 00 00 ff ff ff ff 10 00 00 00 25 73 25 73 25 73 25 73 25 73 25 73 25 73 25 73 00 00 00 00 41 49 43 37 00 00 00 00 41 49 43 38 00 00 00 00 41 49 43 39 00 00 00 00 41 49 43 39 2e 6c 6f 6f 70 00 } //1
		$a_01_1 = {62 00 00 00 ff ff ff ff 01 00 00 00 69 00 00 00 ff ff ff ff 01 00 00 00 6e 00 00 00 ff ff ff ff 01 00 00 00 2e 00 00 00 ff ff ff ff 01 00 00 00 64 00 00 00 ff ff ff ff 01 00 00 00 61 00 00 00 ff ff ff ff 01 00 00 00 74 00 } //1
		$a_03_2 = {66 81 38 4d 5a 0f 85 ?? ?? ?? ?? 33 c0 } //1
		$a_03_3 = {50 68 00 20 00 00 8b 45 ?? 8b 40 50 50 8b 45 ?? 8b 40 34 50 (6a ff|) e8 ?? ?? ?? ?? 89 45 } //1
		$a_03_4 = {8b 00 83 78 28 00 0f 84 ?? ?? ?? ?? 33 c0 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=4
 
}
rule Trojan_Win32_Dexphot_3{
	meta:
		description = "Trojan:Win32/Dexphot,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {2e 00 48 00 65 00 61 00 64 00 65 00 72 00 73 00 5b 00 27 00 55 00 73 00 65 00 72 00 2d 00 41 00 67 00 65 00 6e 00 74 00 27 00 5d 00 20 00 3d 00 20 00 27 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 72 00 27 00 } //1 .Headers['User-Agent'] = 'Windows Installer'
		$a_00_1 = {2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 28 00 27 00 68 00 74 00 74 00 70 00 } //1 .DownloadFile('http
		$a_00_2 = {2e 00 69 00 6e 00 66 00 6f 00 2f 00 } //1 .info/
		$a_00_3 = {53 00 74 00 61 00 72 00 74 00 2d 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 } //1 Start-Process 
		$a_00_4 = {2d 00 41 00 72 00 67 00 75 00 6d 00 65 00 6e 00 74 00 4c 00 69 00 73 00 74 00 20 00 27 00 2f 00 71 00 } //1 -ArgumentList '/q
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}
rule Trojan_Win32_Dexphot_4{
	meta:
		description = "Trojan:Win32/Dexphot,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {6f 63 65 73 73 4d 64 69 6e 6f 63 65 73 73 4d 69 64 73 73 4d 69 6e 69 6e 6f 63 65 73 73 4d 69 6e 64 6f 63 65 73 73 4d 69 6e 69 6e 6f 63 65 73 73 4d 69 6e 69 6e } //1 ocessMdinocessMidssMininocessMindocessMininocessMinin
	condition:
		((#a_01_0  & 1)*1) >=1
 
}