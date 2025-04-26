
rule TrojanDownloader_O97M_Powdow_RVV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 2e 52 75 6e 20 22 22 22 22 20 26 20 57 61 79 24 20 26 20 22 22 22 22 } //1 CreateObject("wscript.shell").Run """" & Way$ & """"
		$a_01_1 = {6c 69 6e 6b 61 24 20 3d 20 22 68 74 74 70 3a 2f 2f 73 75 6b 6e 6f 73 65 70 73 61 2e 74 65 6d 70 2e 73 77 74 65 73 74 2e 72 75 2f 52 65 64 43 72 61 62 2e 65 78 65 22 } //1 linka$ = "http://suknosepsa.temp.swtest.ru/RedCrab.exe"
		$a_01_2 = {57 61 79 24 20 3d 20 22 43 3a 5c 74 65 6d 70 5c 52 65 64 43 72 61 62 2e 65 78 65 22 } //1 Way$ = "C:\temp\RedCrab.exe"
		$a_01_3 = {2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 52 65 70 6c 61 63 65 28 55 52 4c 24 2c 20 22 5c 22 2c 20 22 2f 22 29 2c 20 22 46 61 6c 73 65 22 } //1 .Open "GET", Replace(URL$, "\", "/"), "False"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}