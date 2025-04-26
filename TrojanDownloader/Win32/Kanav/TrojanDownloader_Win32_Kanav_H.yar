
rule TrojanDownloader_Win32_Kanav_H{
	meta:
		description = "TrojanDownloader:Win32/Kanav.H,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_03_0 = {c0 e1 04 02 0c bd ?? ?? ?? ?? 32 4d ?? 43 46 88 08 (e8|ff 15) ?? ?? ?? ?? 3b f0 [0-01] 7c 9b } //2
		$a_01_1 = {83 ff 31 7e 05 83 ef 32 eb 03 83 c7 0a 8d 45 f0 50 ff d6 0f b7 45 fc 3b c7 75 } //2
		$a_00_2 = {72 65 67 20 64 65 6c 65 74 65 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 41 63 74 69 76 65 20 53 65 74 75 70 5c 49 6e 73 74 61 6c 6c 65 64 20 43 6f 6d 70 6f 6e 65 6e 74 73 5c } //1 reg delete "HKEY_CURRENT_USER\Software\Microsoft\Active Setup\Installed Components\
		$a_02_3 = {5c 42 61 74 74 6c 65 2e 6e 65 74 5c 49 64 65 6e 74 69 74 79 [0-40] 2d 73 74 61 72 74 } //1
		$a_02_4 = {5c 56 33 4d 65 64 69 63 2e 65 78 65 [0-05] 56 65 72 73 69 6f 6e 00 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 4f 6c 65 } //1
		$a_01_5 = {56 33 4d 65 64 69 63 2e 65 78 65 00 00 25 73 5c 41 59 4c 61 75 6e 63 68 2e 65 78 65 00 25 73 5c 75 73 70 31 30 2e 64 6c 6c 2e 62 61 6b } //1
		$a_01_6 = {3c 64 65 73 63 72 69 70 74 69 6f 6e 3e 3c 21 5b 43 44 41 54 41 5b } //1 <description><![CDATA[
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}