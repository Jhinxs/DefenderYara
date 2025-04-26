
rule TrojanDownloader_Win32_Banload_BBF{
	meta:
		description = "TrojanDownloader:Win32/Banload.BBF,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 41 6e 74 69 56 69 72 75 73 50 72 6f 64 75 63 74 } //1 SELECT * FROM AntiVirusProduct
		$a_01_1 = {2f 54 52 20 22 63 6d 64 20 2f 63 20 62 69 74 73 61 64 6d 69 6e 20 2f 74 72 61 6e 73 66 65 72 20 53 75 6e 4f 6e 65 20 2f 44 6f 77 6e 6c 6f 61 64 20 2f 50 52 49 4f 52 49 54 59 20 48 49 47 48 20 68 74 74 70 3a 2f 2f } //1 /TR "cmd /c bitsadmin /transfer SunOne /Download /PRIORITY HIGH http://
		$a_01_2 = {5c 53 79 73 74 65 6d 20 2f 76 20 45 6e 61 62 6c 65 4c 55 41 20 2f 74 20 52 45 47 5f 44 57 4f 52 44 20 2f 64 20 30 20 2f 66 } //1 \System /v EnableLUA /t REG_DWORD /d 0 /f
		$a_01_3 = {2f 6e 6f 74 69 66 79 2e 70 68 70 3f 61 64 64 73 3d } //1 /notify.php?adds=
		$a_03_4 = {63 6d 64 20 2f 63 20 72 65 67 2e 65 78 65 20 41 44 44 20 48 4b 43 55 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 20 2f 76 20 [0-28] 20 2f 74 20 52 45 47 5f 53 5a 20 2f 64 20 22 72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 25 54 45 4d 50 25 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=4
 
}