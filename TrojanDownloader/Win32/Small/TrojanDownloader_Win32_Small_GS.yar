
rule TrojanDownloader_Win32_Small_GS{
	meta:
		description = "TrojanDownloader:Win32/Small.GS,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 05 00 00 "
		
	strings :
		$a_02_0 = {64 3a 5c 4d 79 44 6f 63 75 6d 65 6e 74 5c 56 69 73 75 61 6c 20 53 74 75 64 69 6f 20 50 72 6f 6a 65 63 74 73 5c 44 6f 77 6e 6c 6f 61 64 65 72 20 20 50 72 6f 6a 65 63 74 20 59 55 ?? 5c 44 6f 77 6e 6c 6f 61 64 65 72 4d 61 69 6e 5c 44 6f 77 6e 6c 6f 61 64 65 72 44 6c 6c 2e 70 64 62 00 00 } //2
		$a_01_1 = {4d 79 20 42 65 61 75 74 69 66 75 6c 20 67 69 72 6c 21 21 21 00 00 } //2
		$a_01_2 = {68 74 74 70 3a 2f 2f 6f 31 61 2e 63 6e 2f 43 6f 75 6e 74 65 72 2f 4e 65 77 43 6f 75 6e 74 65 72 2e 61 73 70 3f 50 61 72 61 6d 3d } //1 http://o1a.cn/Counter/NewCounter.asp?Param=
		$a_02_3 = {68 74 74 70 3a 2f 2f 6f 31 2e 6f 31 77 79 2e 63 6f 6d 2f 6d 69 73 73 2f [0-08] 2e 67 69 66 } //1
		$a_01_4 = {5c 73 79 73 74 65 6d 2e 64 61 74 00 } //1
	condition:
		((#a_02_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_02_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}