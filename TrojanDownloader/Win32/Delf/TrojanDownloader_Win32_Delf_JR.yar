
rule TrojanDownloader_Win32_Delf_JR{
	meta:
		description = "TrojanDownloader:Win32/Delf.JR,SIGNATURE_TYPE_PEHSTR_EXT,09 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 50 72 6f 6a 65 74 6f 20 4c 65 67 61 63 79 20 32 30 31 30 } //2 \Projeto Legacy 2010
		$a_01_1 = {5c 44 6f 77 6e 6c 6f 61 64 65 72 5c 43 6c 61 73 73 65 73 2e 70 61 73 } //1 \Downloader\Classes.pas
		$a_01_2 = {6e 61 74 61 6c 66 65 6c 69 7a 32 30 31 30 2e 77 69 6b 69 2e 62 72 2f 68 79 6c 65 78 31 2e 73 77 66 } //3 natalfeliz2010.wiki.br/hylex1.swf
		$a_01_3 = {66 61 6e 74 61 73 69 61 32 30 31 30 2e 63 6f 6d 2e 62 72 2f 68 79 6c 65 78 31 2e 73 77 66 } //3 fantasia2010.com.br/hylex1.swf
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*3+(#a_01_3  & 1)*3) >=5
 
}