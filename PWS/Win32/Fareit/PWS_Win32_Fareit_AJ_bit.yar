
rule PWS_Win32_Fareit_AJ_bit{
	meta:
		description = "PWS:Win32/Fareit.AJ!bit,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 "
		
	strings :
		$a_03_0 = {e3 40 fe 45 ?? 0f b6 45 ?? 0f b6 14 38 88 55 ?? 00 55 ?? 0f b6 45 ?? 8a 14 38 88 55 ?? 0f b6 45 ?? 88 14 38 0f b6 45 ?? 8a 55 ?? 88 14 38 8a 55 ?? 02 55 ?? 8a 14 3a 8b 45 ?? 30 14 30 ff 45 ?? e2 c0 } //3
		$a_03_1 = {8b d0 c1 ea 08 32 07 25 ff 00 00 00 8b 04 85 ?? ?? ?? ?? 33 c2 47 e2 e8 } //3
		$a_01_2 = {53 45 4c 45 43 54 20 68 6f 73 74 6e 61 6d 65 2c 20 65 6e 63 72 79 70 74 65 64 55 73 65 72 6e 61 6d 65 2c 20 65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 20 46 52 4f 4d 20 6d 6f 7a 5f 6c 6f 67 69 6e 73 } //1 SELECT hostname, encryptedUsername, encryptedPassword FROM moz_logins
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 20 46 6f 6c 64 65 72 73 } //1 Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders
		$a_01_4 = {53 69 74 65 53 65 72 76 65 72 20 25 64 5c 52 65 6d 6f 74 65 20 44 69 72 65 63 74 6f 72 79 } //1 SiteServer %d\Remote Directory
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*3+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=8
 
}