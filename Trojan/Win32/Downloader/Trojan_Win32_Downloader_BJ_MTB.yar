
rule Trojan_Win32_Downloader_BJ_MTB{
	meta:
		description = "Trojan:Win32/Downloader.BJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 31 36 37 2e 39 39 2e 33 39 2e 32 33 2f 68 6f 65 74 6e 61 63 61 2f 65 78 70 73 2f 42 74 2e 6d 70 34 } //1 http://167.99.39.23/hoetnaca/exps/Bt.mp4
		$a_01_1 = {25 74 65 6d 70 25 5c 53 65 74 74 69 6e 67 73 2e 65 78 65 } //1 %temp%\Settings.exe
		$a_01_2 = {35 31 2e 32 35 34 2e 32 35 2e 31 31 35 } //2 51.254.25.115
		$a_01_3 = {36 39 2e 31 36 34 2e 31 39 36 2e 32 31 } //2 69.164.196.21
		$a_01_4 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1) >=5
 
}