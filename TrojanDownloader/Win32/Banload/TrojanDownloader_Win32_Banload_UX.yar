
rule TrojanDownloader_Win32_Banload_UX{
	meta:
		description = "TrojanDownloader:Win32/Banload.UX,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {4c 6f 61 64 65 72 76 62 5f 4d 6f 64 75 6c 6f } //2 Loadervb_Modulo
		$a_01_1 = {64 00 65 00 73 00 65 00 6e 00 76 00 6f 00 6c 00 76 00 69 00 6d 00 65 00 6e 00 74 00 6f 00 5c 00 6c 00 6f 00 61 00 64 00 65 00 72 00 73 00 5c 00 4c 00 6f 00 61 00 64 00 65 00 72 00 76 00 62 00 } //2 desenvolvimento\loaders\Loadervb
		$a_01_2 = {53 00 63 00 72 00 69 00 70 00 74 00 69 00 6e 00 67 00 2e 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //1 Scripting.FileSystemObject
		$a_01_3 = {4f 00 70 00 65 00 6e 00 54 00 65 00 78 00 74 00 46 00 69 00 6c 00 65 00 } //1 OpenTextFile
		$a_01_4 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 46 00 69 00 6c 00 65 00 73 00 } //1 ProgramFiles
		$a_01_5 = {72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //1 regsvr32.exe
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}