
rule TrojanDownloader_O97M_Emotet_NEMC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.NEMC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {73 32 20 3d 20 22 44 61 49 63 44 61 49 6d 64 2e 44 61 49 65 44 61 49 78 65 20 44 61 49 2f 44 61 49 63 20 73 44 61 49 74 61 44 61 49 72 74 20 2f 44 61 49 42 20 70 6f 44 61 49 77 44 61 49 65 72 44 61 49 73 68 44 61 49 65 6c 44 61 49 6c 20 24 64 44 61 49 66 6b 6a 3d 22 22 24 44 61 49 73 74 44 61 49 72 73 3d 5c 22 22 68 44 61 49 74 74 44 61 49 70 44 61 49 73 3a } //1 s2 = "DaIcDaImd.DaIeDaIxe DaI/DaIc sDaItaDaIrt /DaIB poDaIwDaIerDaIshDaIelDaIl $dDaIfkj=""$DaIstDaIrs=\""hDaIttDaIpDaIs:
		$a_01_1 = {2e 53 44 61 49 70 6c 44 61 49 69 74 28 5c 22 22 44 61 49 2c 44 61 49 5c 22 22 29 3b 66 44 61 49 6f 44 61 49 72 65 61 63 44 61 49 68 28 24 44 61 49 73 74 20 69 44 61 49 6e 20 22 } //1 .SDaIplDaIit(\""DaI,DaI\"");fDaIoDaIreacDaIh($DaIst iDaIn "
		$a_03_2 = {72 61 20 3d 20 52 65 70 6c 61 63 65 28 73 32 2c 20 22 [0-10] 22 2c 20 22 22 29 } //1
		$a_03_3 = {51 75 65 72 79 54 61 62 6c 65 73 2e 41 64 64 28 22 22 20 26 20 52 65 70 6c 61 63 65 28 66 69 6c 65 6e 61 6d 65 24 2c 20 22 20 22 2c 20 22 [0-10] 22 29 2c 20 74 6d 70 53 68 65 65 74 2e 52 61 6e 67 65 28 22 41 31 22 29 29 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}