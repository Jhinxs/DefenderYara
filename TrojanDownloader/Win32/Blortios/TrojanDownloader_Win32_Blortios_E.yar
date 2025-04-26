
rule TrojanDownloader_Win32_Blortios_E{
	meta:
		description = "TrojanDownloader:Win32/Blortios.E,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 43 00 6c 00 69 00 65 00 6e 00 74 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 4d 00 65 00 6e 00 75 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 5c 00 49 00 45 00 58 00 50 00 4c 00 4f 00 52 00 45 00 2e 00 45 00 58 00 45 00 5c 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 5c 00 } //1 SOFTWARE\Clients\StartMenuInternet\IEXPLORE.EXE\shell\open\command\
		$a_03_1 = {64 77 6e 6c 64 72 [0-01] 50 72 6f 63 65 73 73 43 6f 6d 70 6c 65 74 65 64 } //1
		$a_01_2 = {56 00 62 00 50 00 51 00 52 00 53 00 54 00 55 00 2b 00 41 00 42 00 43 00 44 00 45 00 46 00 47 00 63 00 32 00 2f 00 35 00 36 00 37 00 38 00 66 00 67 00 68 00 69 00 6a 00 73 00 74 00 75 00 30 00 31 00 4d 00 6b 00 6c 00 } //1 VbPQRSTU+ABCDEFGc2/5678fghijstu01Mkl
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}