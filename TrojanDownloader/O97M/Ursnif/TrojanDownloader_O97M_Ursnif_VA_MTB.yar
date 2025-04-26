
rule TrojanDownloader_O97M_Ursnif_VA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.VA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 73 3a 2f 2f 6f 6e 6c 69 6e 65 63 6f 6d 70 61 6e 69 65 68 6f 75 73 65 2e 63 6f 6d 2f 73 6f 72 76 44 32 2e } //1 https://onlinecompaniehouse.com/sorvD2.
		$a_01_1 = {68 74 74 70 73 3a 2f 2f 6f 6e 6c 69 6e 65 63 6f 6d 70 61 6e 69 65 68 6f 75 73 65 2e 63 6f 6d 2f 73 6f 72 76 2e 70 6e 67 20 } //10 https://onlinecompaniehouse.com/sorv.png 
		$a_01_2 = {73 6f 72 76 2e 70 6e 67 } //1 sorv.png
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1) >=12
 
}
rule TrojanDownloader_O97M_Ursnif_VA_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.VA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {3d 20 22 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 52 72 4b 6b 69 2e 70 64 66 22 } //1 = "c:\programdata\RrKki.pdf"
		$a_03_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-28] 28 33 29 20 26 20 22 2e 22 20 26 20 [0-28] 28 33 29 20 26 20 22 72 65 71 75 65 73 74 2e 35 2e 31 22 29 } //1
		$a_03_2 = {4f 70 65 6e 20 22 47 45 54 22 2c 20 [0-28] 28 [0-28] 29 2c 20 46 61 6c 73 65 } //1
		$a_01_3 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //1 Sub AutoOpen()
		$a_01_4 = {2e 65 78 65 63 20 28 59 42 78 73 50 29 } //1 .exec (YBxsP)
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_Ursnif_VA_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.VA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {3d 20 22 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 68 4d 44 63 4a 2e 70 64 66 22 } //1 = "c:\programdata\hMDcJ.pdf"
		$a_03_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-28] 28 33 29 20 26 20 22 2e 22 20 26 20 [0-28] 28 33 29 20 26 20 22 72 65 71 75 65 73 74 2e 35 2e 31 22 29 } //1
		$a_03_2 = {4f 70 65 6e 20 22 47 45 54 22 2c 20 [0-28] 28 [0-28] 29 2c 20 46 61 6c 73 65 } //1
		$a_01_3 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //1 Sub AutoOpen()
		$a_01_4 = {2e 65 78 65 63 20 28 4b 73 56 6f 4a 29 } //1 .exec (KsVoJ)
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}