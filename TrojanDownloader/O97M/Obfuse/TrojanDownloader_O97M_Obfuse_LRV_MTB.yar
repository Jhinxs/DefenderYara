
rule TrojanDownloader_O97M_Obfuse_LRV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.LRV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {48 65 6c 73 57 6b 6a 7a 43 46 78 56 6c 65 4e 77 20 4c 69 62 20 22 73 68 65 6c 6c 33 32 2e 64 6c 6c 22 } //1 HelsWkjzCFxVleNw Lib "shell32.dll"
		$a_01_1 = {55 69 6a 62 47 48 47 46 20 3d 20 31 20 54 6f 20 4c 65 6e 28 49 49 75 66 79 6a 6a 62 29 } //1 UijbGHGF = 1 To Len(IIufyjjb)
		$a_01_2 = {55 53 45 52 50 52 4f 46 49 4c 45 20 26 20 43 68 72 28 41 73 63 28 73 29 20 2d 20 31 29 } //1 USERPROFILE & Chr(Asc(s) - 1)
		$a_01_3 = {73 20 3d 20 4d 69 64 28 65 6e 63 2c 20 69 2c 20 31 29 } //1 s = Mid(enc, i, 1)
		$a_01_4 = {49 63 72 79 70 74 4f 49 68 69 75 67 79 74 46 46 4a 67 6a 48 46 4a 47 28 22 66 79 66 2f 6a 64 75 64 22 29 } //1 IcryptOIhiugytFFJgjHFJG("fyf/jdud")
		$a_01_5 = {52 61 6e 67 65 28 22 56 31 22 29 2e 56 61 6c 75 65 20 3d 20 22 63 6f 6d 70 72 6f 62 61 6e 74 65 20 64 65 20 70 61 67 6f 22 } //1 Range("V1").Value = "comprobante de pago"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}