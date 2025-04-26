
rule Ransom_Win32_StopCrypt_PAX_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.PAX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_01_0 = {5c 65 6e 63 72 79 70 74 5f 77 69 6e 5f 61 70 69 2e 70 64 62 } //2 \encrypt_win_api.pdb
		$a_01_1 = {64 65 6c 73 65 6c 66 2e 62 61 74 } //1 delself.bat
		$a_01_2 = {2d 00 2d 00 41 00 75 00 74 00 6f 00 53 00 74 00 61 00 72 00 74 00 } //1 --AutoStart
		$a_81_3 = {20 2f 64 65 6e 79 20 2a 53 2d 31 2d 31 2d 30 3a 28 4f 49 29 28 43 49 29 28 44 45 2c 44 43 29 } //1  /deny *S-1-1-0:(OI)(CI)(DE,DC)
		$a_01_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 Software\Microsoft\Windows\CurrentVersion\Run
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_81_3  & 1)*1+(#a_01_4  & 1)*1) >=6
 
}