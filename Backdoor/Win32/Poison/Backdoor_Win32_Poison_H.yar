
rule Backdoor_Win32_Poison_H{
	meta:
		description = "Backdoor:Win32/Poison.H,SIGNATURE_TYPE_PEHSTR,3d 00 3d 00 09 00 00 "
		
	strings :
		$a_01_0 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 } //10 explorer.exe
		$a_01_1 = {73 76 68 6f 73 74 65 72 73 2e 65 78 65 } //10 svhosters.exe
		$a_01_2 = {77 61 6e 67 77 61 6e 67 32 30 30 38 } //10 wangwang2008
		$a_01_3 = {63 76 6e 78 75 73 2e 38 38 30 30 2e 6f 72 67 } //10 cvnxus.8800.org
		$a_01_4 = {43 4f 4e 4e 45 43 54 20 25 73 3a 25 69 20 48 54 54 50 2f 31 2e 30 } //10 CONNECT %s:%i HTTP/1.0
		$a_01_5 = {7b 38 39 42 41 41 44 34 32 2d 37 34 31 33 2d 37 44 43 34 2d 43 30 38 34 2d 35 38 35 36 31 43 41 39 45 46 30 41 7d } //10 {89BAAD42-7413-7DC4-C084-58561CA9EF0A}
		$a_01_6 = {53 4f 46 54 57 41 52 45 5c 43 6c 61 73 73 65 73 5c 68 74 74 70 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 } //1 SOFTWARE\Classes\http\shell\open\command
		$a_01_7 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 41 63 74 69 76 65 20 53 65 74 75 70 5c 49 6e 73 74 61 6c 6c 65 64 20 43 6f 6d 70 6f 6e 65 6e 74 73 5c } //1 Software\Microsoft\Active Setup\Installed Components\
		$a_01_8 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=61
 
}