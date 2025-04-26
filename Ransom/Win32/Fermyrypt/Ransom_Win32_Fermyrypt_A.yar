
rule Ransom_Win32_Fermyrypt_A{
	meta:
		description = "Ransom:Win32/Fermyrypt.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_00_0 = {5c 77 70 5f 65 6e 63 72 79 70 74 2e 70 64 62 } //1 \wp_encrypt.pdb
		$a_00_1 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 33 00 32 00 5c 00 2a 00 2e 00 64 00 6c 00 6c 00 } //1 C:\WINDOWS\SYSTEM32\*.dll
		$a_00_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 53 00 68 00 65 00 6c 00 6c 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 73 00 } //1 Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders
		$a_01_3 = {0f b6 04 07 33 c6 c1 ee 08 0f b6 c0 33 34 83 8b 44 24 10 33 f2 47 3b fd 7c e6 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*2) >=5
 
}