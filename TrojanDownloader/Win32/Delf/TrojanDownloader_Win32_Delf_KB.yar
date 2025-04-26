
rule TrojanDownloader_Win32_Delf_KB{
	meta:
		description = "TrojanDownloader:Win32/Delf.KB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {53 41 7a 6d 31 30 5c 64 64 64 65 72 2e 65 78 65 } //1 SAzm10\ddder.exe
		$a_01_2 = {53 41 7a 6d 31 30 5c 61 64 73 6c 6f 67 2e 74 78 74 } //1 SAzm10\adslog.txt
		$a_01_3 = {4c 6f 67 69 63 61 6c 20 44 69 73 6b 20 4d 61 6e 61 67 65 72 20 41 6d 64 69 6e 69 73 74 72 61 74 69 76 65 20 53 65 72 53 41 7a 6d 31 30 } //1 Logical Disk Manager Amdinistrative SerSAzm10
		$a_01_4 = {43 72 65 61 74 65 53 65 72 76 69 63 65 41 } //1 CreateServiceA
		$a_01_5 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}