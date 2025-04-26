
rule TrojanDownloader_Win32_VB_KZ{
	meta:
		description = "TrojanDownloader:Win32/VB.KZ,SIGNATURE_TYPE_PEHSTR,33 00 33 00 07 00 00 "
		
	strings :
		$a_01_0 = {70 6f 72 74 61 6c 6e 61 72 75 74 6f 2e 63 6f 6d } //10 portalnaruto.com
		$a_01_1 = {48 54 54 50 20 43 6c 69 65 6e 74 } //10 HTTP Client
		$a_01_2 = {77 77 77 2e 6c 61 63 61 64 65 6e 61 68 65 72 72 75 6d 62 72 6f 73 61 2e 6e 65 74 } //10 www.lacadenaherrumbrosa.net
		$a_01_3 = {43 3a 5c 41 72 71 75 69 76 6f 73 20 64 65 20 70 72 6f 67 72 61 6d 61 73 5c 4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 53 74 75 64 69 6f 5c 56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //10 C:\Arquivos de programas\Microsoft Visual Studio\VB98\VB6.OLB
		$a_01_4 = {49 6d 61 67 65 32 00 50 72 6f 6a 65 63 74 31 } //10
		$a_01_5 = {2f 00 63 00 6f 00 6d 00 70 00 6f 00 6e 00 65 00 6e 00 74 00 73 00 2f 00 63 00 6f 00 6d 00 5f 00 61 00 67 00 6f 00 72 00 61 00 2f 00 69 00 6d 00 67 00 2f 00 72 00 61 00 6e 00 6b 00 73 00 2f 00 31 00 2e 00 74 00 78 00 74 00 } //1 /components/com_agora/img/ranks/1.txt
		$a_01_6 = {2f 00 63 00 6f 00 6d 00 70 00 6f 00 6e 00 65 00 6e 00 74 00 73 00 2f 00 63 00 6f 00 6d 00 5f 00 61 00 67 00 6f 00 72 00 61 00 2f 00 69 00 6d 00 67 00 2f 00 72 00 61 00 6e 00 6b 00 73 00 2f 00 32 00 2e 00 74 00 78 00 74 00 } //1 /components/com_agora/img/ranks/2.txt
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=51
 
}