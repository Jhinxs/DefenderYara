
rule PWS_Win32_Fareit__Fareit{
	meta:
		description = "PWS:Win32/Fareit!!Fareit.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {2f 67 61 74 65 2e 70 68 70 } //1 /gate.php
		$a_01_1 = {50 57 44 46 49 4c 45 30 59 55 49 50 4b 44 46 49 4c 45 30 59 55 49 43 52 59 50 54 45 44 } //2 PWDFILE0YUIPKDFILE0YUICRYPTED
		$a_00_2 = {53 6f 66 74 77 61 72 65 5c 57 69 6e 52 41 52 } //1 Software\WinRAR
		$a_00_3 = {53 6f 66 74 77 61 72 65 5c 46 61 72 32 5c 53 61 76 65 64 44 69 61 6c 6f 67 48 69 73 74 6f 72 79 5c 46 54 50 48 6f 73 74 } //1 Software\Far2\SavedDialogHistory\FTPHost
		$a_03_4 = {48 57 49 44 [0-05] 7b 25 30 38 58 2d 25 30 34 58 2d 25 30 34 58 2d 25 30 32 58 25 30 32 58 2d 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 7d } //1
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}