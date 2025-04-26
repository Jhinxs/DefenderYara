
rule TrojanDropper_O97M_Akonis_A{
	meta:
		description = "TrojanDropper:O97M/Akonis.A,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {53 65 74 20 90 1d 2f 00 20 3d 20 90 1d 2f 00 28 90 1d 2f 00 28 22 [0-0f] 6e [0-05] 66 [0-05] 75 [0-05] 74 [0-05] 7a [0-2f] 22 29 29 [0-50] 3d 20 90 1b 00 2e 47 65 74 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 28 32 29 20 26 20 90 1b 02 28 22 [0-05] 74 [0-05] 6b [0-05] 2f [0-ff] 90 1b 00 2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}