
rule Trojan_Win32_KeyLogger_BAB_MTB{
	meta:
		description = "Trojan:Win32/KeyLogger.BAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 "
		
	strings :
		$a_01_0 = {31 00 34 00 31 00 2e 00 31 00 34 00 37 00 2e 00 34 00 33 00 2e 00 32 00 31 00 39 00 3a 00 33 00 30 00 30 00 30 00 2f 00 66 00 74 00 70 00 2f 00 45 00 6d 00 6d 00 65 00 74 00 50 00 52 00 4f 00 44 00 2e 00 65 00 78 00 65 00 } //2 141.147.43.219:3000/ftp/EmmetPROD.exe
		$a_01_1 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 4d 69 63 72 6f 73 6f 66 74 5c 4f 6e 65 44 72 69 76 65 5c 45 64 67 65 55 70 64 61 74 65 72 2e 65 78 65 } //1 C:\Program Files\Microsoft\OneDrive\EdgeUpdater.exe
		$a_01_2 = {64 65 73 74 72 75 63 74 2e 62 61 74 } //1 destruct.bat
		$a_01_3 = {7a 2e 65 78 65 } //1 z.exe
		$a_01_4 = {5b 50 72 69 6e 74 20 53 63 72 65 65 6e 5d } //1 [Print Screen]
		$a_01_5 = {5b 53 63 72 6f 6c 6c 20 4c 6f 63 6b 5d } //1 [Scroll Lock]
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=7
 
}