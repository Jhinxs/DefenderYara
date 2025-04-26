
rule TrojanDownloader_O97M_Powdow_BKST_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.BKST!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {3d 20 43 68 72 28 78 63 64 73 67 20 2d 20 31 34 34 29 } //1 = Chr(xcdsg - 144)
		$a_01_1 = {64 73 66 64 61 73 20 3d 20 63 78 7a 76 78 7a 73 66 } //1 dsfdas = cxzvxzsf
		$a_01_2 = {46 75 6e 63 74 69 6f 6e 20 76 62 6e 67 68 66 67 28 78 63 64 73 67 20 41 73 20 56 61 72 69 61 6e 74 29 } //1 Function vbnghfg(xcdsg As Variant)
		$a_01_3 = {76 78 63 78 62 20 3d 20 22 76 78 63 62 20 62 78 63 62 20 63 62 76 63 78 62 22 } //1 vxcxb = "vxcb bxcb cbvcxb"
		$a_03_4 = {2e 52 75 6e 28 [0-32] 2c 20 [0-32] 29 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}