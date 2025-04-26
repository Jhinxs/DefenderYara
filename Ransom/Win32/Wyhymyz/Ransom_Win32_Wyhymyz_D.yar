
rule Ransom_Win32_Wyhymyz_D{
	meta:
		description = "Ransom:Win32/Wyhymyz.D,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 06 00 00 "
		
	strings :
		$a_01_0 = {44 00 45 00 43 00 52 00 59 00 50 00 54 00 5f 00 49 00 4e 00 46 00 4f 00 52 00 4d 00 41 00 54 00 49 00 4f 00 4e 00 2e 00 68 00 74 00 6d 00 6c 00 } //1 DECRYPT_INFORMATION.html
		$a_01_1 = {55 00 4e 00 49 00 51 00 55 00 45 00 5f 00 49 00 44 00 5f 00 44 00 4f 00 5f 00 4e 00 4f 00 54 00 5f 00 52 00 45 00 4d 00 4f 00 56 00 45 00 } //2 UNIQUE_ID_DO_NOT_REMOVE
		$a_01_2 = {64 65 6c 20 2f 73 20 2f 66 20 2e 77 62 63 61 74 20 66 3a 5c 2a 2e 62 6b 66 20 5c 2a 2e 62 61 63 20 68 3a 5c 2a 2e 62 61 6b 20 5c 2a 2e 73 65 74 20 68 3a 5c 2a 2e 77 69 6e 20 62 6b 66 20 68 3a 5c 42 61 63 6b 75 70 2a 2e 2a 61 63 20 66 3a 5c 2a 2e 62 61 6b 20 66 3a 5c 2a 65 74 20 66 3a 5c 2a 2e 77 69 6e 20 66 3a 5c 2a 3a 5c 62 61 63 6b 75 70 2a 2e 2a 20 67 3a 5c 2a 2f 71 20 67 3a 5c 2a 2e 56 48 44 20 67 3a 5c 2a } //4 del /s /f .wbcat f:\*.bkf \*.bac h:\*.bak \*.set h:\*.win bkf h:\Backup*.*ac f:\*.bak f:\*et f:\*.win f:\*:\backup*.* g:\*/q g:\*.VHD g:\*
		$a_01_3 = {2f 66 6f 72 3d 64 3a 20 2f 6f 6e 3d 64 3a 20 73 74 6f 72 61 67 65 20 2f 66 6f 72 3d 67 3a 20 65 20 73 68 61 64 6f 77 73 74 6f 72 61 67 65 20 76 73 73 61 64 6d 69 6e 20 44 65 6c 65 74 65 20 76 73 73 61 64 6d 69 6e 20 72 65 73 69 7a 65 20 2e 64 73 6b } //4 /for=d: /on=d: storage /for=g: e shadowstorage vssadmin Delete vssadmin resize .dsk
		$a_03_4 = {8d a4 24 00 00 00 00 30 9e ?? ?? 40 00 46 68 ?? ?? 40 00 e8 ?? ?? ff ff 83 c4 04 3b f0 7c } //8
		$a_03_5 = {66 0f 1f 84 00 00 00 00 00 30 9e ?? ?? 40 00 46 68 ?? ?? 40 00 e8 ?? ?? ff ff 83 c4 04 3b f0 7c } //8
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*4+(#a_01_3  & 1)*4+(#a_03_4  & 1)*8+(#a_03_5  & 1)*8) >=9
 
}