
rule PWS_Win32_Lolyda_BK{
	meta:
		description = "PWS:Win32/Lolyda.BK,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 "
		
	strings :
		$a_01_0 = {50 72 6f 70 65 72 74 79 50 72 6f 74 65 63 74 57 6e 64 } //2 PropertyProtectWnd
		$a_01_1 = {2e 2e 5c 4c 61 73 74 43 6f 6e 66 69 67 2e 69 6e 69 } //3 ..\LastConfig.ini
		$a_01_2 = {43 6f 6e 74 65 6e 74 2d 44 69 73 70 6f 73 69 74 69 6f 6e 3a 20 66 6f 72 6d 2d 64 61 74 61 3b 20 6e 61 6d 65 3d 22 66 69 6c 65 31 22 3b 20 66 69 6c 65 6e 61 6d 65 3d 22 25 73 22 } //3 Content-Disposition: form-data; name="file1"; filename="%s"
		$a_01_3 = {64 30 30 3d 25 73 26 64 30 31 3d 25 73 26 64 33 30 3d 25 73 26 64 33 32 3d 25 64 26 64 34 30 3d 25 64 26 64 31 30 3d 25 73 26 64 31 31 3d 25 73 26 64 31 32 3d 25 73 26 64 32 31 3d 25 73 26 64 35 30 3d 25 73 } //4 d00=%s&d01=%s&d30=%s&d32=%d&d40=%d&d10=%s&d11=%s&d12=%s&d21=%s&d50=%s
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_01_3  & 1)*4) >=12
 
}