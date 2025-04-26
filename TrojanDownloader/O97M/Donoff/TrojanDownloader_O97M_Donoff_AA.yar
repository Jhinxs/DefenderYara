
rule TrojanDownloader_O97M_Donoff_AA{
	meta:
		description = "TrojanDownloader:O97M/Donoff.AA,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {2e 73 61 76 65 74 6f 66 69 6c 65 20 45 6e 76 69 72 6f 6e 28 22 74 65 22 20 26 20 22 6d 70 22 29 20 26 20 22 5c 22 20 26 } //1 .savetofile Environ("te" & "mp") & "\" &
		$a_00_1 = {2e 52 75 6e 20 45 6e 76 69 72 6f 6e 28 22 74 65 22 20 26 20 22 6d 70 22 29 20 26 20 22 5c 22 20 26 } //1 .Run Environ("te" & "mp") & "\" &
		$a_01_2 = {28 22 6f 7b 7b 77 41 36 36 } //1 ("o{{wA66
		$a_01_3 = {35 6c 7f 6c 22 29 } //1 氵汿⤢
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}