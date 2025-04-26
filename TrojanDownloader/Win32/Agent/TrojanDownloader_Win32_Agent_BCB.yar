
rule TrojanDownloader_Win32_Agent_BCB{
	meta:
		description = "TrojanDownloader:Win32/Agent.BCB,SIGNATURE_TYPE_PEHSTR,28 00 1e 00 05 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 67 31 2e 67 6c 6f 62 6f 2e 63 6f 6d 2f 4e 6f 74 69 63 69 61 73 2f 53 61 6f 50 61 75 6c 6f 2f 30 2c 2c 4d 55 4c 37 33 34 33 39 2d 35 36 30 35 2c 30 30 2e 68 74 6d 6c } //10 http://g1.globo.com/Noticias/SaoPaulo/0,,MUL73439-5605,00.html
		$a_01_1 = {63 3a 5c 77 69 6e 75 70 64 74 65 2e 65 78 65 } //10 c:\winupdte.exe
		$a_01_2 = {68 74 74 70 3a 2f 2f 67 6c 6f 62 6f 6e 6f 74 69 63 69 61 2e 69 69 74 61 6c 69 61 2e 63 6f 6d 2f 6e 6f 74 69 63 69 61 2e 63 6f 6d } //10 http://globonoticia.iitalia.com/noticia.com
		$a_01_3 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //5 ShellExecuteA
		$a_01_4 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //5 URLDownloadToFileA
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5) >=30
 
}