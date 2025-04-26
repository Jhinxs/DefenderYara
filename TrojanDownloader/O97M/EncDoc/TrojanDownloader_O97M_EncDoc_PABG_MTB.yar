
rule TrojanDownloader_O97M_EncDoc_PABG_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.PABG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {69 6e 74 28 38 39 37 36 35 2a 72 6e 64 29 2b 31 39 38 6d 73 65 65 3d 22 73 63 72 69 70 74 69 6e 67 2e 22 3a 6d 73 65 65 3d 6d 73 65 65 26 22 66 69 6c } //1 int(89765*rnd)+198msee="scripting.":msee=msee&"fil
		$a_01_1 = {29 7a 72 74 79 3d 74 65 64 65 72 67 6d 3a 63 61 6c 6c 73 68 65 6c 6c 28 28 28 6e 61 61 6d 65 28 73 70 65 65 65 2d 6d 73 6f 63 74 70 64 6f 63 6b 70 6f 73 69 74 69 6f 6e 72 65 73 74 72 69 63 74 6e 6f 63 68 61 6e 67 65 29 26 66 66 61 6c 73 65 29 29 29 65 6e 64 66 } //1 )zrty=tedergm:callshell(((naame(speee-msoctpdockpositionrestrictnochange)&ffalse)))endf
		$a_01_2 = {68 72 6f 3d 36 64 69 6d 6f 75 74 6c 69 6e 67 73 28 73 70 65 65 65 29 66 69 67 67 3d 30 66 6f 72 65 61 63 68 73 63 72 72 6f 6c 6c 69 6e 72 61 6e 67 65 28 22 68 37 36 3a 69 39 32 22 29 2e 72 6f 77 73 66 69 67 67 3d 66 69 67 67 2b 33 2d 73 70 65 65 65 77 65 65 73 3d 77 65 65 73 26 6d 69 64 } //1 hro=6dimoutlings(speee)figg=0foreachscrrollinrange("h76:i92").rowsfigg=figg+3-speeewees=wees&mid
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}