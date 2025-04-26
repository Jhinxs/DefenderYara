
rule TrojanDropper_O97M_Hancitor_EOBX_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.EOBX!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {6f 78 6c 20 3d 20 22 5c 7a 6f 72 6f 2e 22 20 26 20 22 64 } //1 oxl = "\zoro." & "d
		$a_01_1 = {6f 78 6c 20 3d 20 6f 78 6c 20 26 20 22 6f } //1 oxl = oxl & "o
		$a_01_2 = {4e 61 6d 65 20 70 61 66 73 20 41 73 20 70 6c 73 20 26 20 6f 78 6c } //1 Name pafs As pls & oxl
		$a_01_3 = {43 61 6c 6c 20 75 6f 69 61 28 61 61 61 61 29 } //1 Call uoia(aaaa)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}