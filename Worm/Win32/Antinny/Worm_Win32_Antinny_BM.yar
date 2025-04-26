
rule Worm_Win32_Antinny_BM{
	meta:
		description = "Worm:Win32/Antinny.BM,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 73 79 73 74 65 6d 36 35 33 2e 65 78 65 } //1 C:\system653.exe
		$a_00_1 = {73 79 73 74 65 6d 36 35 33 00 00 00 ff ff ff ff 2e 00 00 00 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1
		$a_00_2 = {63 3a 5c 4c 4f 47 30 31 5c 65 78 70 6c 6f 72 65 72 } //1 c:\LOG01\explorer
		$a_00_3 = {4e 6f 64 65 72 65 66 2e 74 78 74 } //1 Noderef.txt
		$a_00_4 = {44 6f 77 6e 6c 6f 61 64 2e 74 78 74 } //1 Download.txt
		$a_00_5 = {55 70 66 6f 6c 64 65 72 2e 74 78 74 } //1 Upfolder.txt
		$a_00_6 = {73 68 69 72 61 6e 65 } //1 shirane
		$a_01_7 = {b8 84 59 46 00 e8 75 39 fa ff 84 c0 0f 85 3b 01 00 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}