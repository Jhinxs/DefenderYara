
rule Trojan_Win32_DelfInject_AG_MTB{
	meta:
		description = "Trojan:Win32/DelfInject.AG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {8b 6c 11 fc 01 c5 89 6c 13 04 83 c2 04 81 fa fc 4f 00 00 72 eb } //1
		$a_01_1 = {a1 60 ca 8d 00 89 43 08 56 ff 74 24 04 68 00 50 00 00 53 ff d7 a1 7c ca 8d 00 01 d8 03 43 0c 03 1d 7c ca 8d 00 53 ff d0 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Trojan_Win32_DelfInject_AG_MTB_2{
	meta:
		description = "Trojan:Win32/DelfInject.AG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 "
		
	strings :
		$a_80_0 = {57 69 6e 48 74 74 70 43 72 61 63 6b 55 72 6c } //WinHttpCrackUrl  3
		$a_00_1 = {46 00 52 00 45 00 52 00 05 00 4d 00 54 00 4f 00 47 00 4f } //3
		$a_00_2 = {44 6f 63 6b 53 69 74 65 } //3 DockSite
		$a_80_3 = {44 65 43 6f 64 65 72 } //DeCoder  3
		$a_80_4 = {4b 69 6c 6c 54 69 6d 65 72 } //KillTimer  3
		$a_80_5 = {4c 6f 61 64 4b 65 79 62 6f 61 72 64 4c 61 79 6f 75 74 41 } //LoadKeyboardLayoutA  3
	condition:
		((#a_80_0  & 1)*3+(#a_00_1  & 1)*3+(#a_00_2  & 1)*3+(#a_80_3  & 1)*3+(#a_80_4  & 1)*3+(#a_80_5  & 1)*3) >=18
 
}
rule Trojan_Win32_DelfInject_AG_MTB_3{
	meta:
		description = "Trojan:Win32/DelfInject.AG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 "
		
	strings :
		$a_80_0 = {5a 63 65 64 6d 6a 6e 5a } //ZcedmjnZ  3
		$a_80_1 = {57 6e 64 50 72 6f 63 50 74 72 25 2e 38 58 25 2e 38 58 } //WndProcPtr%.8X%.8X  3
		$a_80_2 = {77 69 6e 68 74 74 70 } //winhttp  3
		$a_00_3 = {44 00 45 00 53 00 54 00 41 00 04 00 41 00 4b 00 41 00 4e } //3
		$a_00_4 = {71 49 44 41 54 78 9c ed 9d 69 83 82 2a 14 86 c5 b6 a9 6c 9b b4 a9 b1 29 } //3
		$a_80_5 = {57 69 6e 48 74 74 70 43 72 61 63 6b 55 72 6c } //WinHttpCrackUrl  3
	condition:
		((#a_80_0  & 1)*3+(#a_80_1  & 1)*3+(#a_80_2  & 1)*3+(#a_00_3  & 1)*3+(#a_00_4  & 1)*3+(#a_80_5  & 1)*3) >=18
 
}