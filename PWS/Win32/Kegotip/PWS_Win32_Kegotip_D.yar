
rule PWS_Win32_Kegotip_D{
	meta:
		description = "PWS:Win32/Kegotip.D,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {69 6e 64 65 78 5f 67 65 74 2e 70 68 70 3f 6b 65 79 3d 59 52 48 44 58 43 46 26 61 63 74 69 6f 6e 3d 41 44 44 5f 46 54 50 26 69 64 3d 25 73 26 66 74 70 5f 68 6f 73 74 3d 25 73 26 66 74 70 5f 6c 6f 67 69 6e 3d 25 73 26 66 74 70 5f 70 61 73 73 3d 25 73 } //1 index_get.php?key=YRHDXCF&action=ADD_FTP&id=%s&ftp_host=%s&ftp_login=%s&ftp_pass=%s
		$a_03_1 = {45 6e 63 72 79 70 74 5f 50 57 [0-05] 55 73 65 72 [0-05] 53 65 72 76 65 72 [0-04] 50 61 73 73 77 6f 72 64 } //1
		$a_01_2 = {0f b6 51 0c 39 55 fc 0f 83 d6 00 00 00 8b 45 08 8b 08 c1 e9 03 89 4d f4 8b 55 08 8b 02 33 d2 b9 08 00 00 00 f7 f1 89 55 f8 8b 45 fc 33 d2 b9 08 00 00 00 f7 f1 8b 45 08 0f b6 4c 10 10 8b 55 fc c1 ea 03 8b 45 0c 0f b6 14 02 23 ca 88 4d f3 8b 45 fc 33 d2 b9 08 00 00 00 f7 f1 b9 07 00 00 00 2b ca 8a 55 f3 d2 ea 88 55 f3 8b 45 08 8b 50 08 b8 07 00 00 00 2b 45 f8 0f be c8 b8 01 00 00 00 d3 e0 0f b6 c8 f7 d1 8b 45 f4 0f b6 14 02 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}