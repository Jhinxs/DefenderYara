
rule TrojanDownloader_O97M_Donoff_CZ{
	meta:
		description = "TrojanDownloader:O97M/Donoff.CZ,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {56 42 5f 4e 61 6d 65 20 3d 20 22 71 77 65 71 77 65 } //1 VB_Name = "qweqwe
		$a_01_1 = {68 65 6c 22 20 2b 20 22 6c 20 28 4e 65 22 20 2b 20 22 77 2d 4f } //1 hel" + "l (Ne" + "w-O
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}