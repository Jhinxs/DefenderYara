
rule Ransom_Win32_Wyhymyz_A{
	meta:
		description = "Ransom:Win32/Wyhymyz.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_80_0 = {55 4e 49 51 55 45 5f 49 44 5f 44 4f 5f 4e 4f 54 5f 52 45 4d 4f 56 45 } //UNIQUE_ID_DO_NOT_REMOVE  1
		$a_00_1 = {52 45 47 20 41 44 44 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 22 20 2f 76 20 22 61 6c 6c 6b 65 65 70 65 72 22 20 2f 74 20 52 45 47 5f 53 5a 20 2f 64 20 } //1 REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "allkeeper" /t REG_SZ /d 
		$a_00_2 = {48 45 52 4d 45 53 } //1 HERMES
		$a_00_3 = {4a 44 53 6b 66 6e 67 72 6a 74 62 79 35 6e 74 6f 69 76 74 6d 6f 76 72 6b 6d 65 6b 76 6d 63 6c 6b 76 63 76 74 72 67 62 79 62 74 64 6b 6c 66 65 76 6c 6b 62 72 6c 65 76 72 } //1 JDSkfngrjtby5ntoivtmovrkmekvmclkvcvtrgbybtdklfevlkbrlevr
		$a_00_4 = {44 45 43 52 59 50 54 5f 49 4e 46 4f 52 4d 41 54 49 4f 4e 2e 68 74 6d 6c } //1 DECRYPT_INFORMATION.html
		$a_00_5 = {64 65 6c 20 2f 73 20 2f 66 20 2f 71 20 63 3a 5c 2a 2e 56 48 44 20 63 3a 5c 2a 2e 62 61 63 20 63 3a 5c 2a 2e 62 61 6b 20 63 3a 5c 2a 2e 77 62 63 61 74 20 63 3a 5c 2a 2e 62 6b 66 20 63 3a 5c 42 61 63 6b 75 70 2a 2e 2a 20 63 3a 5c 62 61 63 6b 75 70 2a 2e 2a 20 63 3a 5c 2a 2e 73 65 74 20 63 3a 5c 2a 2e 77 69 6e 20 63 3a 5c 2a 2e 64 73 6b } //2 del /s /f /q c:\*.VHD c:\*.bac c:\*.bak c:\*.wbcat c:\*.bkf c:\Backup*.* c:\backup*.* c:\*.set c:\*.win c:\*.dsk
	condition:
		((#a_80_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*2) >=4
 
}