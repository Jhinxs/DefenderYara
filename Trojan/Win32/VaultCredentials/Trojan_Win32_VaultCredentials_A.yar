
rule Trojan_Win32_VaultCredentials_A{
	meta:
		description = "Trojan:Win32/VaultCredentials.A,SIGNATURE_TYPE_CMDHSTR_EXT,64 00 03 00 09 00 00 "
		
	strings :
		$a_80_0 = {2e 65 78 65 20 2f 73 63 6f 6d 6d 61 20 } //.exe /scomma   1
		$a_80_1 = {5c 41 70 70 44 61 74 61 5c 4c 6f 63 61 6c 5c 54 65 6d 70 5c } //\AppData\Local\Temp\  1
		$a_80_2 = {2e 74 6d 70 } //.tmp  1
		$a_00_3 = {63 6d 64 2e 65 78 65 } //-10 cmd.exe
		$a_00_4 = {64 65 76 6d 61 6e 76 69 65 77 2e 65 78 65 } //-10 devmanview.exe
		$a_00_5 = {44 69 73 6b 53 6d 61 72 74 56 69 65 77 2e 65 78 65 } //-10 DiskSmartView.exe
		$a_00_6 = {57 69 6e 4c 6f 67 4f 6e 56 69 65 77 2e 65 78 65 } //-10 WinLogOnView.exe
		$a_00_7 = {50 72 6f 64 75 6b 65 79 2e 65 78 65 } //-10 Produkey.exe
		$a_00_8 = {4f 70 65 6e 65 64 46 69 6c 65 73 56 69 65 77 2e 65 78 65 } //-10 OpenedFilesView.exe
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_00_3  & 1)*-10+(#a_00_4  & 1)*-10+(#a_00_5  & 1)*-10+(#a_00_6  & 1)*-10+(#a_00_7  & 1)*-10+(#a_00_8  & 1)*-10) >=3
 
}