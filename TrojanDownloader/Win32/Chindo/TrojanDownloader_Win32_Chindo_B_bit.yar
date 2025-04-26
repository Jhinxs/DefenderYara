
rule TrojanDownloader_Win32_Chindo_B_bit{
	meta:
		description = "TrojanDownloader:Win32/Chindo.B!bit,SIGNATURE_TYPE_PEHSTR_EXT,32 00 32 00 0a 00 00 "
		
	strings :
		$a_01_0 = {33 36 30 54 72 61 79 2e 65 78 65 } //10 360Tray.exe
		$a_01_1 = {72 75 6e 41 66 74 65 72 49 73 74 61 6c 6c } //10 runAfterIstall
		$a_01_2 = {2f 72 65 70 6f 72 74 2f 74 6a 5f 63 72 61 73 68 72 65 63 6f 72 64 73 2e 70 68 70 } //10 /report/tj_crashrecords.php
		$a_01_3 = {2f 72 65 73 2f 6d 69 6e 69 6c 6f 67 6f 32 2e 69 63 6f } //10 /res/minilogo2.ico
		$a_01_4 = {22 73 6f 66 74 5f 69 64 22 3a 22 36 38 22 } //10 "soft_id":"68"
		$a_01_5 = {35 31 62 61 6e 67 35 74 61 70 61 70 79 } //5 51bang5tapapy
		$a_01_6 = {21 40 23 34 35 36 24 25 5e 31 32 33 } //5 !@#456$%^123
		$a_01_7 = {68 74 74 70 3a 2f 2f 69 6e 74 2e 64 70 6f 6f 6c 2e 73 69 6e 61 2e 63 6f 6d 2e 63 6e 2f 69 70 6c 6f 6f 6b 75 70 2f 69 70 6c 6f 6f 6b 75 70 2e 70 68 70 } //3 http://int.dpool.sina.com.cn/iplookup/iplookup.php
		$a_01_8 = {4d 65 73 73 61 67 65 50 75 73 68 } //1 MessagePush
		$a_01_9 = {41 75 74 6f 55 70 64 61 74 65 } //1 AutoUpdate
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*5+(#a_01_6  & 1)*5+(#a_01_7  & 1)*3+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=50
 
}