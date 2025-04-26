
rule TrojanDownloader_Win32_Banload_BCK{
	meta:
		description = "TrojanDownloader:Win32/Banload.BCK,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 77 69 6e 73 79 73 78 5c } //2 c:\programdata\winsysx\
		$a_01_1 = {6e 6f 74 69 63 69 61 73 } //2 noticias
		$a_01_2 = {2e 70 68 70 3f 63 68 61 76 65 3d 78 63 68 61 76 65 26 75 72 6c 3d } //2 .php?chave=xchave&url=
		$a_01_3 = {2e 63 70 6c 2e 7a 69 70 } //1 .cpl.zip
		$a_01_4 = {2e 65 78 65 2e 7a 69 70 } //1 .exe.zip
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}