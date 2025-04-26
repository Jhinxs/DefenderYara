
rule TrojanSpy_Win32_Delf_BD{
	meta:
		description = "TrojanSpy:Win32/Delf.BD,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {66 74 70 54 72 61 6e 73 66 65 72 } //1 ftpTransfer
		$a_00_1 = {43 3a 5c 77 69 6e 64 6f 77 73 5c 77 69 6e 68 65 6c 70 32 33 2e 69 6e 69 } //1 C:\windows\winhelp23.ini
		$a_00_2 = {73 79 73 74 65 6d 5c 73 76 63 68 6f 73 74 2e 65 78 65 } //1 system\svchost.exe
		$a_00_3 = {73 79 73 74 65 6d 5c 73 79 73 63 6f 6e 66 2e 63 70 6c } //1 system\sysconf.cpl
		$a_00_4 = {63 6d 64 20 2f 6b 20 20 73 74 61 72 74 20 43 3a 5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 5c 73 79 73 63 6f 6e 66 2e 63 70 6c } //1 cmd /k  start C:\windows\system\sysconf.cpl
		$a_01_5 = {44 6f 6d 69 6e 61 64 61 20 66 74 70 21 20 2a 2a 20 72 65 65 6e 76 69 6f 21 21 } //2 Dominada ftp! ** reenvio!!
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_01_5  & 1)*2) >=5
 
}