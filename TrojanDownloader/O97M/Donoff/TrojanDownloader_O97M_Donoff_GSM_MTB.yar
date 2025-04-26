
rule TrojanDownloader_O97M_Donoff_GSM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.GSM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {70 72 69 6e 74 65 64 28 22 32 68 74 34 30 74 31 70 31 31 73 34 3a 36 2f 31 32 2f 33 64 36 6f 70 36 36 6c 65 72 39 30 74 6f 38 6f 6c 31 2e 63 34 6f 30 6d 34 22 29 } //1 printed("2ht40t1p11s4:6/12/3d6op66ler90to8ol1.c4o0m4")
		$a_01_1 = {70 72 69 6e 74 65 64 28 22 39 72 34 75 35 6e 35 64 33 6c 31 6c 31 22 29 20 26 20 33 32 20 26 20 22 20 22 20 26 20 55 20 26 20 6d 65 73 74 65 72 69 75 73 } //1 printed("9r4u5n5d3l1l1") & 32 & " " & U & mesterius
		$a_01_2 = {6d 65 73 74 65 72 69 75 73 20 3d 20 70 72 69 6e 74 65 64 28 22 31 32 2c 37 23 39 30 30 34 22 29 20 26 20 36 } //1 mesterius = printed("12,7#9004") & 6
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}