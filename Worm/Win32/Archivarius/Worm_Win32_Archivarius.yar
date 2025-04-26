
rule Worm_Win32_Archivarius{
	meta:
		description = "Worm:Win32/Archivarius,SIGNATURE_TYPE_PEHSTR_EXT,4d 01 4d 01 0b 00 00 "
		
	strings :
		$a_01_0 = {54 6f 6f 6c 68 65 6c 70 33 32 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //100 Toolhelp32ReadProcessMemory
		$a_01_1 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //100 CreateToolhelp32Snapshot
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 } //100 SOFTWARE\Borland\Delphi
		$a_01_3 = {65 6d 75 6c 65 2e 65 78 65 } //3 emule.exe
		$a_01_4 = {4c 69 6d 65 57 69 72 65 2e 65 78 65 } //3 LimeWire.exe
		$a_01_5 = {65 64 6f 6e 6b 65 79 2e 65 78 65 } //3 edonkey.exe
		$a_01_6 = {57 61 72 65 7a 2e 65 78 65 } //3 Warez.exe
		$a_01_7 = {5c 65 44 6f 6e 6b 65 79 32 30 30 30 20 44 6f 77 6e 6c 6f 61 64 73 5c } //3 \eDonkey2000 Downloads\
		$a_01_8 = {74 65 6d 70 5f 30 31 2e 65 78 65 00 ff ff ff ff 04 00 00 00 54 45 58 54 00 00 00 00 74 65 6d 70 5f 30 31 2e 65 78 65 00 6f 70 65 6e 00 00 00 00 ff ff ff ff 07 00 00 00 72 61 72 2e 65 78 65 } //10
		$a_01_9 = {42 65 61 72 53 68 61 72 65 2e 65 78 65 00 00 00 ff ff ff ff 0d 00 00 00 6b 61 7a 61 61 6c 69 74 65 2e 6b 70 70 00 00 00 ff ff ff ff 09 00 00 00 6b 61 7a 61 61 2e 65 78 65 } //10
		$a_01_10 = {83 c9 ff 83 ca ff e8 01 00 00 00 c3 6a 00 52 51 b2 04 66 8b } //10
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*100+(#a_01_2  & 1)*100+(#a_01_3  & 1)*3+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3+(#a_01_6  & 1)*3+(#a_01_7  & 1)*3+(#a_01_8  & 1)*10+(#a_01_9  & 1)*10+(#a_01_10  & 1)*10) >=333
 
}