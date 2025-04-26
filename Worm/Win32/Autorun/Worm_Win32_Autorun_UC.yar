
rule Worm_Win32_Autorun_UC{
	meta:
		description = "Worm:Win32/Autorun.UC,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_00_1 = {68 74 74 70 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 5c } //1 http\shell\open\command\
		$a_01_2 = {53 48 47 65 74 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 4c 6f 63 61 74 69 6f 6e } //1 SHGetSpecialFolderLocation
		$a_01_3 = {57 65 20 41 72 65 20 48 65 6c 6c 4d 61 6b 65 72 73 } //1 We Are HellMakers
		$a_01_4 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 75 64 2e 73 79 73 } //1 C:\WINDOWS\ud.sys
		$a_01_5 = {63 3a 5c 66 69 6c 65 2e 65 78 65 } //1 c:\file.exe
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}