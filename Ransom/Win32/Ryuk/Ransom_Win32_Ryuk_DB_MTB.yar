
rule Ransom_Win32_Ryuk_DB_MTB{
	meta:
		description = "Ransom:Win32/Ryuk.DB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_81_0 = {76 73 73 61 64 6d 69 6e 20 44 65 6c 65 74 65 20 53 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //1 vssadmin Delete Shadows /all /quiet
		$a_81_1 = {52 79 75 6b 52 65 61 64 4d 65 2e 68 74 6d 6c } //1 RyukReadMe.html
		$a_81_2 = {44 45 43 52 59 50 54 5f 49 4e 46 4f 52 4d 41 54 49 4f 4e 2e 68 74 6d 6c } //1 DECRYPT_INFORMATION.html
		$a_81_3 = {40 70 72 6f 74 6f 6e 6d 61 69 6c 2e 63 6f 6d } //1 @protonmail.com
		$a_81_4 = {64 65 6c 20 2f 73 20 2f 66 20 2f 71 20 63 3a 5c 2a 2e 56 48 44 20 63 3a 5c 2a 2e 62 61 63 20 63 3a 5c 2a 2e 62 61 6b 20 63 3a 5c 2a 2e 77 62 63 61 74 20 63 3a 5c 2a 2e 62 6b 66 20 63 3a 5c 42 61 63 6b 75 70 2a 2e 2a 20 63 3a 5c 62 61 63 6b 75 70 2a 2e 2a 20 63 3a 5c 2a 2e 73 65 74 20 63 3a 5c 2a 2e 77 69 6e 20 63 3a 5c 2a 2e 64 73 6b } //1 del /s /f /q c:\*.VHD c:\*.bac c:\*.bak c:\*.wbcat c:\*.bkf c:\Backup*.* c:\backup*.* c:\*.set c:\*.win c:\*.dsk
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=4
 
}