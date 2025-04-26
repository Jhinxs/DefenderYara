
rule TrojanDownloader_Win32_Banload_JO{
	meta:
		description = "TrojanDownloader:Win32/Banload.JO,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 43 41 49 58 41 5c 5a 45 4c 45 5a 49 4e 5c 44 6f 77 6e 6c 6f 61 64 65 72 5c 43 6c 61 73 73 65 73 2e 70 61 73 } //1 C:\CAIXA\ZELEZIN\Downloader\Classes.pas
		$a_02_1 = {2f 70 6f 69 6e 74 2e ?? 20 48 54 54 50 2f 31 2e 30 } //1
		$a_02_2 = {48 6f 73 74 3a 20 6e 69 6b 6f 6c 79 [0-04] 2e 69 66 72 61 6e 63 65 2e 63 6f 6d } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=2
 
}