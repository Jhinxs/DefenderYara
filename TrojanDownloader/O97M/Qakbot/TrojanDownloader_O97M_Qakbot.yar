
rule TrojanDownloader_O97M_Qakbot{
	meta:
		description = "TrojanDownloader:O97M/Qakbot,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {22 72 22 26 22 65 22 26 22 67 [0-04] 73 22 26 22 76 22 26 22 72 } //1
		$a_00_1 = {3d 22 75 72 22 26 22 6c 64 22 26 22 6f 77 22 26 22 6e 22 26 22 6c 6f 22 26 22 61 64 22 26 22 74 6f 22 26 22 66 69 22 26 22 6c 65 22 26 22 61 22 } //1 ="ur"&"ld"&"ow"&"n"&"lo"&"ad"&"to"&"fi"&"le"&"a"
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1) >=1
 
}