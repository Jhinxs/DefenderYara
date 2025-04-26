
rule TrojanDownloader_Win32_QQHelper_gen_C{
	meta:
		description = "TrojanDownloader:Win32/QQHelper.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 09 00 0b 00 00 "
		
	strings :
		$a_00_0 = {25 73 3f 71 75 65 72 79 69 64 3d 25 73 } //1 %s?queryid=%s
		$a_01_1 = {49 6e 74 65 72 6e 65 74 43 6c 6f 73 65 48 61 6e 64 6c 65 } //1 InternetCloseHandle
		$a_01_2 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //1 InternetOpenA
		$a_00_3 = {48 74 74 70 51 75 65 72 79 49 6e 66 6f 41 } //1 HttpQueryInfoA
		$a_01_4 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //1 InternetReadFile
		$a_00_5 = {49 6e 74 65 72 6e 65 74 51 75 65 72 79 44 61 74 61 41 76 61 69 6c 61 62 6c 65 } //1 InternetQueryDataAvailable
		$a_01_6 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
		$a_00_7 = {68 74 74 70 3a 2f 2f 73 65 74 75 70 31 2e 74 71 7a 6e 2e 63 6f 6d 2f 62 61 72 62 69 6e 64 73 6f 66 74 2f 62 61 72 73 65 74 75 70 2e 65 78 65 } //1 http://setup1.tqzn.com/barbindsoft/barsetup.exe
		$a_00_8 = {68 74 74 70 3a 2f 2f 73 65 74 75 70 32 2e 74 71 7a 6e 2e 63 6f 6d 2f 62 61 72 62 69 6e 64 73 6f 66 74 2f 62 61 72 73 65 74 75 70 2e 65 78 65 } //1 http://setup2.tqzn.com/barbindsoft/barsetup.exe
		$a_00_9 = {68 74 74 70 3a 2f 2f 73 65 74 75 70 33 2e 74 71 7a 6e 2e 63 6f 6d 2f 62 61 72 62 69 6e 64 73 6f 66 74 2f 62 61 72 73 65 74 75 70 2e 65 78 65 } //1 http://setup3.tqzn.com/barbindsoft/barsetup.exe
		$a_00_10 = {68 74 74 70 3a 2f 2f 73 65 74 75 70 34 2e 74 71 7a 6e 2e 63 6f 6d 2f 62 61 72 62 69 6e 64 73 6f 66 74 2f 62 61 72 73 65 74 75 70 2e 65 78 65 } //1 http://setup4.tqzn.com/barbindsoft/barsetup.exe
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1) >=9
 
}