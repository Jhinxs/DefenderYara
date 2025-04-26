
rule TrojanDownloader_O97M_EncDoc_DSM_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.DSM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {59 58 59 20 3d 20 22 59 58 59 26 25 23 59 22 20 2b 20 22 58 59 24 77 3f 22 20 2b 20 22 72 73 68 3f 3e 3e 20 2d 3c 23 59 58 59 24 59 58 59 26 25 20 2d 3f 59 58 59 26 25 20 42 79 59 58 59 26 25 61 73 73 20 2d 63 20 28 22 20 2b 20 22 49 22 20 2b 20 22 27 22 20 2b 20 22 77 22 20 2b 20 22 27 22 20 2b 20 22 72 22 20 2b 20 22 28 27 } //1 YXY = "YXY&%#Y" + "XY$w?" + "rsh?>> -<#YXY$YXY&% -?YXY&% ByYXY&%ass -c (" + "I" + "'" + "w" + "'" + "r" + "('
		$a_01_1 = {59 58 59 20 3d 20 56 42 41 2e 52 65 70 6c 61 63 65 28 59 58 59 2c 20 22 59 58 59 26 25 22 2c 20 22 70 22 29 } //1 YXY = VBA.Replace(YXY, "YXY&%", "p")
		$a_01_2 = {59 58 59 20 3d 20 56 42 41 2e 52 65 70 6c 61 63 65 28 59 58 59 2c 20 22 23 59 58 59 24 22 2c 20 22 6f 22 29 } //1 YXY = VBA.Replace(YXY, "#YXY$", "o")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}