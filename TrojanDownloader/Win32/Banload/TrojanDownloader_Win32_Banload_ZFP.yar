
rule TrojanDownloader_Win32_Banload_ZFP{
	meta:
		description = "TrojanDownloader:Win32/Banload.ZFP,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 67 00 79 00 6e 00 66 00 69 00 74 00 32 00 30 00 31 00 39 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 2f 00 66 00 6f 00 74 00 6f 00 73 00 2e 00 6a 00 70 00 67 00 } //1 https://www.gynfit2019.com.br/fotos.jpg
		$a_01_1 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 58 00 4d 00 4c 00 48 00 54 00 54 00 50 00 } //1 Microsoft.XMLHTTP
		$a_01_2 = {41 00 64 00 6f 00 64 00 62 00 2e 00 53 00 74 00 72 00 65 00 61 00 6d 00 } //1 Adodb.Stream
		$a_01_3 = {53 00 68 00 65 00 6c 00 6c 00 45 00 78 00 65 00 63 00 75 00 74 00 65 00 } //1 ShellExecute
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}