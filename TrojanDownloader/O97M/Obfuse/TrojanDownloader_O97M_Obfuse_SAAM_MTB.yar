
rule TrojanDownloader_O97M_Obfuse_SAAM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SAAM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {4e 6d 42 45 63 41 76 41 6a 63 70 43 4c 42 66 45 61 57 7a 43 68 57 69 64 2e 52 75 6e 20 4e 53 5a 49 52 62 72 79 58 74 53 5a 68 47 44 48 77 72 47 71 71 79 63 2c 20 67 42 62 61 69 55 77 65 73 71 2c 20 54 72 75 65 } //1 NmBEcAvAjcpCLBfEaWzChWid.Run NSZIRbryXtSZhGDHwrGqqyc, gBbaiUwesq, True
		$a_01_1 = {4b 46 75 68 52 73 52 58 55 6c 41 44 20 3d 20 22 67 71 68 32 69 7c 69 24 33 67 24 7b 6c 73 65 71 6d } //1 KFuhRsRXUlAD = "gqh2i|i$3g${lseqm
		$a_01_2 = {53 65 74 20 47 54 59 53 43 51 68 52 72 46 45 4c 72 41 45 69 78 4e 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 5a 74 6e 4c 54 6c 5a 58 49 64 4f 73 70 66 4f 57 28 45 44 51 73 79 79 42 6f 79 6e 7a 6e 75 71 6c 73 74 29 29 } //1 Set GTYSCQhRrFELrAEixN = CreateObject(ZtnLTlZXIdOspfOW(EDQsyyBoynznuqlst))
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}