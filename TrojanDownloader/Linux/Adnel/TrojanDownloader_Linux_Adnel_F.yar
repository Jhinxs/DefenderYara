
rule TrojanDownloader_Linux_Adnel_F{
	meta:
		description = "TrojanDownloader:Linux/Adnel.F,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {64 69 72 65 63 74 65 78 65 2e 63 6f 6d 2f 33 35 31 2f 70 79 6d 5f 74 72 6d 6b } //1 directexe.com/351/pym_trmk
		$a_01_1 = {6e 65 74 72 61 70 68 2e 65 78 65 } //1 netraph.exe
		$a_01_2 = {45 6e 76 69 72 6f 6e 28 22 54 65 6d 70 22 29 } //1 Environ("Temp")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}