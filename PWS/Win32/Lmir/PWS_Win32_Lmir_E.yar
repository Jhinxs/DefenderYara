
rule PWS_Win32_Lmir_E{
	meta:
		description = "PWS:Win32/Lmir.E,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 09 00 0f 00 00 "
		
	strings :
		$a_01_0 = {6e 74 73 64 20 2d 63 20 71 20 2d 70 20 } //1 ntsd -c q -p 
		$a_01_1 = {4b 52 65 67 45 78 2e 65 78 65 } //1 KRegEx.exe
		$a_01_2 = {4b 56 58 50 2e 6b 78 70 } //1 KVXP.kxp
		$a_01_3 = {33 36 30 74 72 61 79 2e 65 78 65 } //1 360tray.exe
		$a_01_4 = {52 55 4e 49 45 50 2e 45 58 45 } //1 RUNIEP.EXE
		$a_01_5 = {69 65 78 70 6c 6f 65 72 2e 65 78 65 } //1 iexploer.exe
		$a_01_6 = {6d 79 77 69 6e 73 79 73 2e 69 6e 69 } //1 mywinsys.ini
		$a_00_7 = {64 6c 6c 5f 68 69 74 70 6f 70 } //1 dll_hitpop
		$a_01_8 = {49 6e 73 74 61 6c 6c 2e 61 73 70 3f 76 65 72 3d } //1 Install.asp?ver=
		$a_00_9 = {41 56 50 2e 41 6c 65 72 74 44 69 61 6c 6f 67 } //1 AVP.AlertDialog
		$a_01_10 = {41 56 50 2e 54 72 61 66 66 69 63 4d 6f 6e 43 6f 6e 6e 65 63 74 69 6f 6e 54 65 72 6d } //1 AVP.TrafficMonConnectionTerm
		$a_01_11 = {41 56 50 2e 42 75 74 74 6f 6e } //1 AVP.Button
		$a_00_12 = {46 69 6e 64 57 69 6e 64 6f 77 41 } //1 FindWindowA
		$a_00_13 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e } //1 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_01_14 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //1 SeDebugPrivilege
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_00_7  & 1)*1+(#a_01_8  & 1)*1+(#a_00_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_01_14  & 1)*1) >=9
 
}