
rule Trojan_Win32_GuLoader_MD_MTB{
	meta:
		description = "Trojan:Win32/GuLoader.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 04 00 00 "
		
	strings :
		$a_00_0 = {8a 4f 01 8a 07 8a d1 8a d8 83 e2 7f 83 e3 7f c1 e2 07 0f b6 c0 0b d3 8b d8 89 55 f8 } //10
		$a_01_1 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 45 00 58 00 45 00 22 00 20 00 43 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 68 00 68 00 2e 00 65 00 78 00 65 00 } //3 C:\Windows\explorer.EXE" C:\windows\system32\hh.exe
		$a_81_2 = {70 69 64 67 69 6e 2e 65 78 65 } //3 pidgin.exe
		$a_81_3 = {72 65 61 64 6d 65 2e 74 78 74 } //3 readme.txt
	condition:
		((#a_00_0  & 1)*10+(#a_01_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3) >=19
 
}
rule Trojan_Win32_GuLoader_MD_MTB_2{
	meta:
		description = "Trojan:Win32/GuLoader.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {50 72 65 64 65 63 65 69 76 65 64 2e 64 6c 6c } //1 Predeceived.dll
		$a_01_1 = {4d 00 6f 00 73 00 65 00 68 00 75 00 73 00 65 00 74 00 73 00 39 00 34 00 } //1 Mosehusets94
		$a_01_2 = {47 00 65 00 6e 00 6e 00 65 00 6d 00 62 00 72 00 79 00 64 00 65 00 6e 00 64 00 65 00 20 00 44 00 61 00 75 00 62 00 72 00 79 00 2e 00 65 00 78 00 65 00 } //1 Gennembrydende Daubry.exe
		$a_01_3 = {57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 55 6e 69 6e 73 74 61 6c 6c 5c 53 70 6f 6e 74 61 6e 69 73 74 65 72 6e 65 73 35 34 5c 4b 6f 6e 73 69 73 74 65 6e 73 65 72 6e 65 73 5c 53 61 6e 6b 74 69 6f 6e 73 66 61 73 74 73 74 74 65 6c 73 65 72 } //1 Windows\CurrentVersion\Uninstall\Spontanisternes54\Konsistensernes\Sanktionsfaststtelser
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 44 72 69 66 74 73 62 79 67 6e 69 6e 67 65 6e 5c 50 6f 6c 79 63 69 74 72 61 6c } //1 Software\Driftsbygningen\Polycitral
		$a_01_5 = {53 6f 66 74 77 61 72 65 5c 47 61 72 61 6e 74 69 62 65 74 61 6c 69 6e 67 65 72 6e 65 73 5c 48 79 67 69 65 6e 69 73 65 } //1 Software\Garantibetalingernes\Hygienise
	condition:
		((#a_81_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}